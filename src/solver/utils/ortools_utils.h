#pragma once

#include "ortools/linear_solver/linear_solver.h"
extern "C"
{
# include "../ext/Sirius_Solver/simplexe/spx_definition_arguments.h"
# include "../ext/Sirius_Solver/simplexe/spx_fonctions.h"

# include "../ext/Sirius_Solver/pne/pne_definition_arguments.h"
# include "../ext/Sirius_Solver/pne/pne_fonctions.h"

}

operations_research::MPSolver * convert_to_MPSolver(PROBLEME_SIMPLEXE * problemeSimplexe);
void extract_from_MPSolver(operations_research::MPSolver * solver, PROBLEME_SIMPLEXE * problemeSimplexe);

void change_MPSolver_objective(operations_research::MPSolver * solver, double * costs, int nbVar);
void change_MPSolver_rhs(operations_research::MPSolver * solver, double * rhs, char * sens, int nbRow);