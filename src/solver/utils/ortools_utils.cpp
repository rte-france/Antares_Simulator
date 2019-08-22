#include "ortools_utils.h"

using namespace operations_research;

MPSolver * convert_to_MPSolver(PROBLEME_SIMPLEXE * problemeSimplexe) {
	// Create the linear solver instance
	//MPSolver * solver = new MPSolver("simple_lp_program", MPSolver::CPLEX_LINEAR_PROGRAMMING);
	//MPSolver * solver = new MPSolver("simple_lp_program", MPSolver::CLP_LINEAR_PROGRAMMING);
	//MPSolver * solver = new MPSolver("simple_lp_program", MPSolver::GLOP_LINEAR_PROGRAMMING);
	MPSolver * solver = new MPSolver("simple_lp_program", MPSolver::SIRIUS_LINEAR_PROGRAMMING);

	// Create the variables and set objective cost.
	MPObjective* const objective = solver->MutableObjective();
	int nbVar = problemeSimplexe->NombreDeVariables;
	for (int idxVar = 0; idxVar < nbVar; ++idxVar) {
		std::ostringstream oss;
		oss << "x" << idxVar;
		double min_l = (
			(problemeSimplexe->TypeDeVariable[idxVar] == VARIABLE_NON_BORNEE) || (problemeSimplexe->TypeDeVariable[idxVar] == VARIABLE_BORNEE_SUPERIEUREMENT) ?
			-MPSolver::infinity() :
			problemeSimplexe->Xmin[idxVar]);
		double max_l = (
			(problemeSimplexe->TypeDeVariable[idxVar] == VARIABLE_NON_BORNEE) || (problemeSimplexe->TypeDeVariable[idxVar] == VARIABLE_BORNEE_INFERIEUREMENT) ?
			MPSolver::infinity() :
			problemeSimplexe->Xmax[idxVar]);
		auto x = solver->MakeNumVar(min_l, max_l, oss.str());
		objective->SetCoefficient(x, problemeSimplexe->CoutLineaire[idxVar]);
	}

	// Create constraints and set coefs
	auto variables = solver->variables();
	char * sens = problemeSimplexe->Sens;
	double * rhs = problemeSimplexe->SecondMembre;

	int nbRow = problemeSimplexe->NombreDeContraintes;
	for (int idxRow = 0; idxRow < nbRow; ++idxRow) {
		double bMin = -MPSolver::infinity(), bMax = MPSolver::infinity();
		if (sens[idxRow] == '=')
			bMin = bMax = rhs[idxRow];
		else if (sens[idxRow] == '<')
			bMax= rhs[idxRow];
		else if (sens[idxRow] == '>')
			bMin = rhs[idxRow];
		std::ostringstream oss;
		oss << "c" << idxRow;
		MPConstraint* const ct = solver->MakeRowConstraint(bMin, bMax, oss.str());
		
		int debutLigne = problemeSimplexe->IndicesDebutDeLigne[idxRow];
		for (int idxCoef = 0; idxCoef < problemeSimplexe->NombreDeTermesDesLignes[idxRow]; ++idxCoef)
		{
			int pos = debutLigne + idxCoef;
			ct->SetCoefficient(variables[problemeSimplexe->IndicesColonnes[pos]], problemeSimplexe->CoefficientsDeLaMatriceDesContraintes[pos]);
		}
	}

	//if (problemeSimplexe->)
	//objective->SetMaximization();

	return solver;
}

void extract_from_MPSolver(MPSolver * solver, PROBLEME_SIMPLEXE * problemeSimplexe) {
	auto & variables = solver->variables();
	int nbVar = problemeSimplexe->NombreDeVariables;

	// Extracting variable values and reduced costs
	for (int idxVar = 0; idxVar < nbVar; ++idxVar) {
		auto & var = variables[idxVar];
		problemeSimplexe->X[idxVar] = var->solution_value();
		problemeSimplexe->CoutsReduits[idxVar] = var->reduced_cost();
	}

	auto & constraints = solver->constraints();
	int nbRow = problemeSimplexe->NombreDeContraintes;
	for (int idxRow = 0; idxRow < nbRow; ++idxRow) {
		auto & row = constraints[idxRow];
		problemeSimplexe->CoutsMarginauxDesContraintes[idxRow] = row->dual_value();
	}
}

void change_MPSolver_objective(MPSolver * solver, double * costs, int nbVar) {
	auto & variables = solver->variables();
	for (int idxVar = 0; idxVar < nbVar; ++idxVar) {
		auto & var = variables[idxVar];
		solver->MutableObjective()->SetCoefficient(var, costs[idxVar]);
	}
}

void change_MPSolver_variables_bounds(MPSolver * solver, double * bMin, double * bMax,  int nbVar, PROBLEME_SIMPLEXE * problemeSimplexe) {
	auto & variables = solver->variables();
	for (int idxVar = 0; idxVar < nbVar; ++idxVar) {
		double min_l = (
			(problemeSimplexe->TypeDeVariable[idxVar] == VARIABLE_NON_BORNEE) || (problemeSimplexe->TypeDeVariable[idxVar] == VARIABLE_BORNEE_SUPERIEUREMENT) ?
			-MPSolver::infinity() :
			bMin[idxVar]);
		double max_l = (
			(problemeSimplexe->TypeDeVariable[idxVar] == VARIABLE_NON_BORNEE) || (problemeSimplexe->TypeDeVariable[idxVar] == VARIABLE_BORNEE_INFERIEUREMENT) ?
			MPSolver::infinity() :
			bMax[idxVar]);
		auto & var = variables[idxVar];
		var->SetBounds(min_l, max_l);
	}
}

void change_MPSolver_rhs(MPSolver * solver, double * rhs, char * sens, int nbRow) {
	auto & constraints = solver->constraints();
	for (int idxRow = 0; idxRow < nbRow; ++idxRow) {
		printf("rhs[idxRow] %d %lf %c\n", idxRow, rhs[idxRow], sens[idxRow]);
		if (sens[idxRow] == '=')
			constraints[idxRow]->SetBounds(rhs[idxRow], rhs[idxRow]);
		else if (sens[idxRow] == '<')
			constraints[idxRow]->SetBounds(- MPSolver::infinity(), rhs[idxRow]);
		else if (sens[idxRow] == '>')
			constraints[idxRow]->SetBounds(rhs[idxRow], MPSolver::infinity());
	}
}
