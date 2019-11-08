// Copyright 2010-2018 Google LLC
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include "ortools/sat/cp_model_expand.h"

#include <map>

#include "absl/container/flat_hash_map.h"
#include "ortools/base/hash.h"
#include "ortools/base/map_util.h"
#include "ortools/sat/cp_model.pb.h"
#include "ortools/sat/cp_model_presolve.h"
#include "ortools/sat/cp_model_utils.h"
#include "ortools/util/saturated_arithmetic.h"

namespace operations_research {
namespace sat {
namespace {

void ExpandReservoir(ConstraintProto* ct, PresolveContext* context) {
  // TODO(user): Support sharing constraints in the model across constraints.
  absl::flat_hash_map<std::pair<int, int>, int> precedence_cache;
  const ReservoirConstraintProto& reservoir = ct->reservoir();
  const int num_variables = reservoir.times_size();

  auto is_optional = [&context, &reservoir](int index) {
    if (reservoir.actives_size() == 0) return false;
    const int literal = reservoir.actives(index);
    const int ref = PositiveRef(literal);
    const IntegerVariableProto& var_proto =
        context->working_model->variables(ref);
    return var_proto.domain_size() != 2 ||
           var_proto.domain(0) != var_proto.domain(1);
  };
  const int true_literal = context->GetOrCreateConstantVar(1);
  auto active = [&reservoir, true_literal](int index) {
    if (reservoir.actives_size() == 0) return true_literal;
    return reservoir.actives(index);
  };

  // x_lesseq_y <=> (x <= y && l_x is true && l_y is true).
  const auto add_reified_precedence = [&context, true_literal](
                                          int x_lesseq_y, int x, int y, int l_x,
                                          int l_y) {
    // x_lesseq_y => (x <= y) && l_x is true && l_y is true.
    ConstraintProto* const lesseq = context->working_model->add_constraints();
    lesseq->add_enforcement_literal(x_lesseq_y);
    lesseq->mutable_linear()->add_vars(x);
    lesseq->mutable_linear()->add_vars(y);
    lesseq->mutable_linear()->add_coeffs(-1);
    lesseq->mutable_linear()->add_coeffs(1);
    lesseq->mutable_linear()->add_domain(0);
    lesseq->mutable_linear()->add_domain(kint64max);
    if (l_x != true_literal) {
      context->AddImplication(x_lesseq_y, l_x);
    }
    if (l_y != true_literal) {
      context->AddImplication(x_lesseq_y, l_y);
    }

    // Not(x_lesseq_y) && l_x && l_y => (x > y)
    ConstraintProto* const greater = context->working_model->add_constraints();
    greater->mutable_linear()->add_vars(x);
    greater->mutable_linear()->add_vars(y);
    greater->mutable_linear()->add_coeffs(-1);
    greater->mutable_linear()->add_coeffs(1);
    greater->mutable_linear()->add_domain(kint64min);
    greater->mutable_linear()->add_domain(-1);
    // Manages enforcement literal.
    if (l_x == true_literal && l_y == true_literal) {
      greater->add_enforcement_literal(NegatedRef(x_lesseq_y));
    } else {
      // conjunction <=> l_x && l_y && not(x_lesseq_y).
      const int conjunction = context->NewBoolVar();
      context->AddImplication(conjunction, NegatedRef(x_lesseq_y));
      BoolArgumentProto* const bool_or =
          context->working_model->add_constraints()->mutable_bool_or();
      bool_or->add_literals(conjunction);
      bool_or->add_literals(x_lesseq_y);

      if (l_x != true_literal) {
        context->AddImplication(conjunction, l_x);
        bool_or->add_literals(NegatedRef(l_x));
      }
      if (l_y != true_literal) {
        context->AddImplication(conjunction, l_y);
        bool_or->add_literals(NegatedRef(l_y));
      }

      greater->add_enforcement_literal(conjunction);
    }
  };

  int num_positives = 0;
  int num_negatives = 0;
  for (const int64 demand : reservoir.demands()) {
    if (demand > 0) {
      num_positives++;
    } else if (demand < 0) {
      num_negatives++;
    }
  }

  if (num_positives > 0 && num_negatives > 0) {
    // Creates Boolean variables equivalent to (start[i] <= start[j]) i != j
    for (int i = 0; i < num_variables - 1; ++i) {
      const int time_i = reservoir.times(i);
      for (int j = i + 1; j < num_variables; ++j) {
        const int time_j = reservoir.times(j);
        const std::pair<int, int> p = std::make_pair(time_i, time_j);
        const std::pair<int, int> rev_p = std::make_pair(time_j, time_i);
        if (gtl::ContainsKey(precedence_cache, p)) continue;

        const int i_lesseq_j = context->NewBoolVar();
        precedence_cache[p] = i_lesseq_j;
        const int j_lesseq_i = context->NewBoolVar();
        precedence_cache[rev_p] = j_lesseq_i;
        add_reified_precedence(i_lesseq_j, time_i, time_j, active(i),
                               active(j));
        add_reified_precedence(j_lesseq_i, time_j, time_i, active(j),
                               active(i));

        // Consistency. This is redundant but should improves performance.
        auto* const bool_or =
            context->working_model->add_constraints()->mutable_bool_or();
        bool_or->add_literals(i_lesseq_j);
        bool_or->add_literals(j_lesseq_i);
        if (is_optional(i)) {
          bool_or->add_literals(NegatedRef(reservoir.actives(i)));
        }
        if (is_optional(j)) {
          bool_or->add_literals(NegatedRef(reservoir.actives(j)));
        }
      }
    }

    // Constrains the running level to be consistent at all times.
    // For this we only add a constraint at the time a given demand
    // take place. We also have a constraint for time zero if needed
    // (added below).
    for (int i = 0; i < num_variables; ++i) {
      const int time_i = reservoir.times(i);
      // Accumulates demands of all predecessors.
      ConstraintProto* const level = context->working_model->add_constraints();
      for (int j = 0; j < num_variables; ++j) {
        if (i == j) continue;
        const int time_j = reservoir.times(j);
        level->mutable_linear()->add_vars(gtl::FindOrDieNoPrint(
            precedence_cache, std::make_pair(time_j, time_i)));
        level->mutable_linear()->add_coeffs(reservoir.demands(j));
      }
      // Accounts for own demand.
      const int64 demand_i = reservoir.demands(i);
      level->mutable_linear()->add_domain(
          CapSub(reservoir.min_level(), demand_i));
      level->mutable_linear()->add_domain(
          CapSub(reservoir.max_level(), demand_i));
      if (is_optional(i)) {
        level->add_enforcement_literal(reservoir.actives(i));
      }
    }
  } else {
    // If all demands have the same sign, we do not care about the order, just
    // the sum.
    int64 fixed_demand = 0;
    auto* const sum =
        context->working_model->add_constraints()->mutable_linear();
    for (int i = 0; i < num_variables; ++i) {
      const int64 demand = reservoir.demands(i);
      if (demand == 0) continue;
      if (is_optional(i)) {
        sum->add_vars(reservoir.actives(i));
        sum->add_coeffs(demand);
      } else {
        fixed_demand += demand;
      }
    }
    sum->add_domain(CapSub(reservoir.min_level(), fixed_demand));
    sum->add_domain(CapSub(reservoir.max_level(), fixed_demand));
  }

  // Constrains the reservoir level to be consistent at time 0.
  // We need to do it only if 0 is not in [min_level..max_level].
  // Otherwise, the regular propagation will already check it.
  if (reservoir.min_level() > 0 || reservoir.max_level() < 0) {
    auto* const initial_ct =
        context->working_model->add_constraints()->mutable_linear();
    for (int i = 0; i < num_variables; ++i) {
      const int time_i = reservoir.times(i);
      const int lesseq_0 = context->NewBoolVar();
      // lesseq_0 <=> (x <= 0 && lit is true).
      context->AddImplyInDomain(lesseq_0, time_i, Domain(kint64min, 0));
      if (active(i) == true_literal) {
        context->AddImplyInDomain(NegatedRef(lesseq_0), time_i,
                                  Domain(1, kint64max));
      } else {
        // conjunction <=> lit && not(lesseq_0).
        const int conjunction = context->NewBoolVar();
        context->AddImplication(conjunction, active(i));
        context->AddImplication(conjunction, NegatedRef(lesseq_0));
        BoolArgumentProto* const bool_or =
            context->working_model->add_constraints()->mutable_bool_or();
        bool_or->add_literals(NegatedRef(active(i)));
        bool_or->add_literals(lesseq_0);
        bool_or->add_literals(conjunction);

        context->AddImplyInDomain(conjunction, time_i, Domain(1, kint64max));
      }

      initial_ct->add_vars(lesseq_0);
      initial_ct->add_coeffs(reservoir.demands(i));
    }
    initial_ct->add_domain(reservoir.min_level());
    initial_ct->add_domain(reservoir.max_level());
  }

  ct->Clear();
  context->UpdateRuleStats("reservoir: expanded");
}

void ExpandIntMod(ConstraintProto* ct, PresolveContext* context) {
  const IntegerArgumentProto& int_mod = ct->int_mod();
  const IntegerVariableProto& var_proto =
      context->working_model->variables(int_mod.vars(0));
  const IntegerVariableProto& mod_proto =
      context->working_model->variables(int_mod.vars(1));
  const int target_var = int_mod.target();

  const int64 mod_lb = mod_proto.domain(0);
  CHECK_GE(mod_lb, 1);
  const int64 mod_ub = mod_proto.domain(mod_proto.domain_size() - 1);

  const int64 var_lb = var_proto.domain(0);
  const int64 var_ub = var_proto.domain(var_proto.domain_size() - 1);

  // Compute domains of var / mod_proto.
  const int div_var =
      context->NewIntVar(Domain(var_lb / mod_ub, var_ub / mod_lb));

  auto add_enforcement_literal_if_needed = [&]() {
    if (ct->enforcement_literal_size() == 0) return;
    const int literal = ct->enforcement_literal(0);
    ConstraintProto* const last = context->working_model->mutable_constraints(
        context->working_model->constraints_size() - 1);
    last->add_enforcement_literal(literal);
  };

  // div = var / mod.
  IntegerArgumentProto* const div_proto =
      context->working_model->add_constraints()->mutable_int_div();
  div_proto->set_target(div_var);
  div_proto->add_vars(int_mod.vars(0));
  div_proto->add_vars(int_mod.vars(1));
  add_enforcement_literal_if_needed();

  // Checks if mod is constant.
  if (mod_lb == mod_ub) {
    // var - div_var * mod = target.
    LinearConstraintProto* const lin =
        context->working_model->add_constraints()->mutable_linear();
    lin->add_vars(int_mod.vars(0));
    lin->add_coeffs(1);
    lin->add_vars(div_var);
    lin->add_coeffs(-mod_lb);
    lin->add_vars(target_var);
    lin->add_coeffs(-1);
    lin->add_domain(0);
    lin->add_domain(0);
    add_enforcement_literal_if_needed();
  } else {
    // Create prod_var = div_var * mod.
    const int mod_var = int_mod.vars(1);
    const int prod_var = context->NewIntVar(
        Domain(var_lb * mod_lb / mod_ub, var_ub * mod_ub / mod_lb));
    IntegerArgumentProto* const int_prod =
        context->working_model->add_constraints()->mutable_int_prod();
    int_prod->set_target(prod_var);
    int_prod->add_vars(div_var);
    int_prod->add_vars(mod_var);
    add_enforcement_literal_if_needed();

    // var - prod_var = target.
    LinearConstraintProto* const lin =
        context->working_model->add_constraints()->mutable_linear();
    lin->add_vars(int_mod.vars(0));
    lin->add_coeffs(1);
    lin->add_vars(prod_var);
    lin->add_coeffs(-1);
    lin->add_vars(target_var);
    lin->add_coeffs(-1);
    lin->add_domain(0);
    lin->add_domain(0);
    add_enforcement_literal_if_needed();
  }

  ct->Clear();
  context->UpdateRuleStats("int_mod: expanded");
}

void ExpandIntProdWithBoolean(int bool_ref, int int_ref, int product_ref,
                              PresolveContext* context) {
  ConstraintProto* const one = context->working_model->add_constraints();
  one->add_enforcement_literal(bool_ref);
  one->mutable_linear()->add_vars(int_ref);
  one->mutable_linear()->add_coeffs(1);
  one->mutable_linear()->add_vars(product_ref);
  one->mutable_linear()->add_coeffs(-1);
  one->mutable_linear()->add_domain(0);
  one->mutable_linear()->add_domain(0);

  ConstraintProto* const zero = context->working_model->add_constraints();
  zero->add_enforcement_literal(NegatedRef(bool_ref));
  zero->mutable_linear()->add_vars(product_ref);
  zero->mutable_linear()->add_coeffs(1);
  zero->mutable_linear()->add_domain(0);
  zero->mutable_linear()->add_domain(0);
}

void ExpandIntProd(ConstraintProto* ct, PresolveContext* context) {
  const IntegerArgumentProto& int_prod = ct->int_prod();
  if (int_prod.vars_size() != 2) return;
  const int a = int_prod.vars(0);
  const int b = int_prod.vars(1);
  const IntegerVariableProto& a_proto =
      context->working_model->variables(PositiveRef(a));
  const IntegerVariableProto& b_proto =
      context->working_model->variables(PositiveRef(b));
  const int p = int_prod.target();
  const bool a_is_boolean = RefIsPositive(a) && a_proto.domain_size() == 2 &&
                            a_proto.domain(0) == 0 && a_proto.domain(1) == 1;
  const bool b_is_boolean = RefIsPositive(b) && b_proto.domain_size() == 2 &&
                            b_proto.domain(0) == 0 && b_proto.domain(1) == 1;

  // We expand if exactly one of {a, b} is Boolean. If both are Boolean, it
  // will be presolved into a better version.
  if (a_is_boolean && !b_is_boolean) {
    ExpandIntProdWithBoolean(a, b, p, context);
    ct->Clear();
    context->UpdateRuleStats("int_prod: expanded product with Boolean var");
  } else if (b_is_boolean && !a_is_boolean) {
    ExpandIntProdWithBoolean(b, a, p, context);
    ct->Clear();
    context->UpdateRuleStats("int_prod: expanded product with Boolean var");
  }
}

}  // namespace

void ExpandCpModel(CpModelProto* working_model, PresolveOptions options) {
  PresolveContext context;
  context.working_model = working_model;
  const int num_constraints = context.working_model->constraints_size();
  for (int i = 0; i < num_constraints; ++i) {
    ConstraintProto* const ct = context.working_model->mutable_constraints(i);
    switch (ct->constraint_case()) {
      case ConstraintProto::ConstraintCase::kReservoir:
        ExpandReservoir(ct, &context);
        break;
      case ConstraintProto::ConstraintCase::kIntMod:
        ExpandIntMod(ct, &context);
        break;
      case ConstraintProto::ConstraintCase::kIntProd:
        ExpandIntProd(ct, &context);
        break;
      default:
        break;
    }
  }

  if (options.log_info) {
    std::map<std::string, int> sorted_rules(context.stats_by_rule_name.begin(),
                                            context.stats_by_rule_name.end());
    for (const auto& entry : sorted_rules) {
      if (entry.second == 1) {
        LOG(INFO) << "- rule '" << entry.first << "' was applied 1 time.";
      } else {
        LOG(INFO) << "- rule '" << entry.first << "' was applied "
                  << entry.second << " times.";
      }
    }
  }
}

}  // namespace sat
}  // namespace operations_research
