
if(NOT MSVC)
	set(CMAKE_C_FLAGS_DEBUG   "${CMAKE_C_FLAGS} -Wno-unused-variable")
	set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS} -Wno-unused-variable")
else()
	#set(CMAKE_C_FLAGS_DEBUG   "${CMAKE_C_FLAGS} /wd 4101") # unused local variable
	#set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS} /wd 4101") # unused local variable
endif()

if (NOT ORTOOLS_INSTALL_DIR)
	MESSAGE(FATAL_ERROR "ORTOOLS_INSTALL_DIR not defined")
endif()

if (NOT LIBS_INSTALL_DIR)
	MESSAGE(FATAL_ERROR "LIBS_INSTALL_DIR for ortools not defined")
endif()

#if (NOT SIRIUSDIR)
#	MESSAGE(FATAL_ERROR "SIRIUSDIR not defined")
#endif()

if (NOT CPLEXDIR)
	MESSAGE(FATAL_ERROR "CPLEXDIR not defined")
endif()

if (NOT XPRESSDIR)
	MESSAGE(FATAL_ERROR "XPRESSDIR not defined")
endif()

SET(ZLIB_ROOT ${LIBS_INSTALL_DIR})
SET(CMAKE_PREFIX_PATH "${CMAKE_PREFIX_PATH};${LIBS_INSTALL_DIR}/lib/cmake/absl")
SET(CMAKE_PREFIX_PATH "${CMAKE_PREFIX_PATH};${LIBS_INSTALL_DIR}/cmake")
SET(CMAKE_PREFIX_PATH "${CMAKE_PREFIX_PATH};${LIBS_INSTALL_DIR}/lib/cmake/gflags")
SET(CMAKE_PREFIX_PATH "${CMAKE_PREFIX_PATH};${LIBS_INSTALL_DIR}/lib/cmake/Cbc")
SET(CMAKE_PREFIX_PATH "${CMAKE_PREFIX_PATH};${LIBS_INSTALL_DIR}/lib/cmake/Cgl")
SET(CMAKE_PREFIX_PATH "${CMAKE_PREFIX_PATH};${LIBS_INSTALL_DIR}/lib/cmake/Clp")
SET(CMAKE_PREFIX_PATH "${CMAKE_PREFIX_PATH};${LIBS_INSTALL_DIR}/lib/cmake/CoinUtils")
SET(CMAKE_PREFIX_PATH "${CMAKE_PREFIX_PATH};${LIBS_INSTALL_DIR}/lib/cmake/glog")
SET(CMAKE_PREFIX_PATH "${CMAKE_PREFIX_PATH};${LIBS_INSTALL_DIR}/lib/cmake/Osi")
SET(CMAKE_PREFIX_PATH "${CMAKE_PREFIX_PATH};${ORTOOLS_INSTALL_DIR}/lib/cmake/ortools")

find_package(gflags REQUIRED)
find_package(ortools REQUIRED)

set(RTESOLVER_OPT
		optimisation/opt_optimisation_hebdo.cpp
		optimisation/opt_appel_solveur_quadratique.cpp
		optimisation/opt_gestion_des_pmax.cpp
		optimisation/opt_gestion_second_membre_cas_lineaire.cpp
		optimisation/opt_optimisation_lineaire.cpp
		optimisation/opt_chainage_intercos.cpp
		optimisation/opt_fonctions.h
		optimisation/opt_pilotage_optimisation_lineaire.cpp
		optimisation/opt_pilotage_optimisation_quadratique.cpp
		optimisation/opt_structure_probleme_a_resoudre.h
		optimisation/opt_alloc_probleme_a_optimiser.cpp
		optimisation/opt_gestion_des_bornes_cas_quadratique.cpp
		optimisation/opt_construction_variables_optimisees_lineaire.cpp
		optimisation/opt_gestion_des_couts_cas_lineaire.cpp
		optimisation/opt_gestion_second_membre_cas_quadratique.cpp
		optimisation/opt_gestion_des_pmin.cpp
		optimisation/opt_calcul_des_pmin_MUT_MDT.cpp
		optimisation/opt_numero_de_jour_du_pas_de_temps.cpp
		optimisation/opt_donnees_pas_de_temps_variable.h
		optimisation/opt_construction_variables_optimisees_quadratique.cpp
		optimisation/opt_decompte_variables_et_contraintes.cpp
		optimisation/opt_construction_matrice_des_contraintes_cas_quadratique.cpp
		optimisation/opt_construction_matrice_des_contraintes_cas_lineaire.cpp
		optimisation/opt_construction_matrice_des_contraintes_outils.cpp
		optimisation/opt_generer_donnees_selon_manoeuvrabilite.cpp
		optimisation/opt_gestion_des_bornes_cas_lineaire.cpp
		optimisation/opt_verification_presence_reserve_jmoins1.cpp
		optimisation/opt_init_contraintes_hydrauliques.cpp
		optimisation/opt_appel_solveur_lineaire.cpp
		optimisation/opt_liberation_problemes_simplexe.cpp
		optimisation/opt_restaurer_les_donnees_selon_manoeuvrabilite_1.cpp
		optimisation/opt_gestion_des_couts_cas_quadratique.cpp

		optimisation/opt_construction_contraintes_couts_demarrage.cpp 
		optimisation/opt_construction_variables_couts_demarrages.cpp
		optimisation/opt_gestion_des_bornes_couts_demarrage.cpp
		optimisation/opt_gestion_des_couts_couts_demarrage.cpp
		optimisation/opt_gestion_second_membre_couts_demarrage.cpp
		optimisation/opt_gestion_second_membre_couts_demarrage.cpp
		optimisation/opt_decompte_variables_et_contraintes_couts_demarrage.cpp
		optimisation/opt_init_minmax_groupes_couts_demarrage.cpp
		optimisation/opt_nombre_min_groupes_demarres_couts_demarrage.cpp

		optimisation/renseigner_donnees_couts_demarrage.cpp
		
		utils/ortools_utils.cpp

	)



set(SRC_MODEL
	${RTESOLVER_OPT}
)
add_subdirectory("${PROJECT_SOURCE_DIR}/../ext/Sirius_Solver" "${PROJECT_SOURCE_DIR}/../ext/Sirius_Solver")
add_library(libmodel_antares STATIC  ${SRC_MODEL})

add_library(libmodel_antares-swap STATIC  ${SRC_MODEL})

set_target_properties(libmodel_antares-swap
	PROPERTIES COMPILE_FLAGS " -DANTARES_SWAP_SUPPORT=1")

#######
	
target_compile_definitions(libmodel_antares PUBLIC USE_XPRESS USE_CPLEX NOMINMAX USE_GLOP USE_BOP USE_CBC USE_CLP)
target_include_directories(libmodel_antares PUBLIC ${ORTOOLS_INSTALL_DIR}/include ${LIBS_INSTALL_DIR}/include)
target_link_directories(libmodel_antares PUBLIC ${ORTOOLS_INSTALL_DIR}/lib ${LIBS_INSTALL_DIR}/lib)

if (MSVC)
	target_link_libraries(libmodel_antares PRIVATE ${LIBS_INSTALL_DIR}/lib/*.lib ws2_32.lib)
	target_link_libraries(libmodel_antares PUBLIC ${XPRESSDIR}/lib/xprs.lib)
	target_link_libraries(libmodel_antares PUBLIC ${CPLEXDIR}/lib/x64_windows_vs2015/stat_mda/cplex1270.lib)
else()
	MESSAGE(FATAL_ERROR "LINUX version not finished yet")
	#target_link_libraries(libmodel_antares PRIVATE ${LIBS_INSTALL_DIR}/lib/*.lib)
	target_link_libraries(libmodel_antares PUBLIC ${XPRESSDIR}/lib/xprs.so)
	target_link_libraries(libmodel_antares PUBLIC ${CPLEXDIR}/lib/x64_windows_vs2015/stat_mda/cplex1270.so)
endif()

target_link_libraries(libmodel_antares PRIVATE ortools)



