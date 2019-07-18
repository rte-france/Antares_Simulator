#include "ortools_utils.h"

using namespace operations_research;

MPSolver * convert_to_MPSolver(PROBLEME_SIMPLEXE * problemeSimplexe) {
	// Create the linear solver instance
	MPSolver * solver = new MPSolver("simple_lp_program", MPSolver::CPLEX_LINEAR_PROGRAMMING);
	//MPSolver * solver = new MPSolver("simple_lp_program", MPSolver::GLOP_LINEAR_PROGRAMMING);

	// Create the variables and set objective cost.
	MPObjective* const objective = solver->MutableObjective();
	int nbVar = problemeSimplexe->NombreDeVariables;
	for (int idxVar = 0; idxVar < nbVar; ++idxVar) {
		std::ostringstream oss;
		oss << "x" << idxVar;
		auto x = solver->MakeNumVar(problemeSimplexe->Xmin[idxVar], problemeSimplexe->Xmax[idxVar], oss.str());
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

void change_MPSolver_rhs(MPSolver * solver, double * rhs, char * sens, int nbRow) {
	auto & constraints = solver->constraints();
	for (int idxRow = 0; idxRow < nbRow; ++idxRow) {
		if (sens[idxRow] == '=')
			constraints[idxRow]->SetBounds(rhs[idxRow], rhs[idxRow]);
		else if (sens[idxRow] == '<')
			constraints[idxRow]->SetBounds(- MPSolver::infinity(), rhs[idxRow]);
		else if (sens[idxRow] == '>')
			constraints[idxRow]->SetBounds(rhs[idxRow], MPSolver::infinity());
	}
}
