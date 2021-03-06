/*
** Copyright 2007-2018 RTE
** Author: Robert Gonzalez
**
** This file is part of Sirius_Solver.
** This program and the accompanying materials are made available under the
** terms of the Eclipse Public License 2.0 which is available at
** http://www.eclipse.org/legal/epl-2.0.
**
** This Source Code may also be made available under the following Secondary
** Licenses when the conditions for such availability set forth in the Eclipse
** Public License, v. 2.0 are satisfied: GNU General Public License, version 3
** or later, which is available at <http://www.gnu.org/licenses/>.
**
** SPDX-License-Identifier: EPL-2.0 OR GPL-3.0
*/
/*************************************************************************

   FONCTION: Si l'on dispose d'une solution entiere on evalue en profondeur
             les noeuds peu prometteurs afin de fermer des arborescences

   AUTEUR: R. GONZALEZ

**************************************************************************/

#include "bb_sys.h"
#include "bb_define.h"
#include "bb_fonctions.h"

# define SEUIL_DEVALUATION 0.95

# ifdef BB_UTILISER_LES_OUTILS_DE_GESTION_MEMOIRE_PROPRIETAIRE	
  # include "bb_memoire.h"
# endif

/*---------------------------------------------------------------------------------------------------------*/

void BB_EvaluerEnProfondeurLesNoeudsCritiques( BB * Bb )
{
NOEUD ** NoeudsAExplorer                    ; NOEUD ** NoeudsAExplorerAuProchainEtage        ; 
NOEUD *  Noeud                              ; NOEUD *  NoeudCourant                          ; 
int     NombreDeNoeudsAExplorer            ; int     NombreDeNoeudsAExplorerAuProchainEtage;
int    i                                   ; double   SeuilPourLEvaluation;

SeuilPourLEvaluation = SEUIL_DEVALUATION * Bb->CoutDeLaMeilleureSolutionEntiere;

NoeudsAExplorer         = (NOEUD **) malloc( 1 * sizeof( void * ) );
if ( NoeudsAExplorer == NULL ) { 
  printf("\n Saturation memoire dans la partie branch & bound, fonction:  BB_RechercherUnNouveauNoeudDeDepart \n");
  Bb->AnomalieDetectee = OUI;
  longjmp( Bb->EnvBB , Bb->AnomalieDetectee ); 
}
NombreDeNoeudsAExplorer = 1;
NoeudsAExplorer[0]      = Bb->NoeudRacine;

while( 1 ) {
  NoeudsAExplorerAuProchainEtage = (NOEUD **) malloc( NombreDeNoeudsAExplorer * 2 * sizeof( void * ) );
  if ( NoeudsAExplorerAuProchainEtage == NULL ) { 
    printf("\n Saturation memoire dans la partie branch & bound, fonction: BB_EliminerLesNoeudsSousOptimaux 2 \n");
    Bb->AnomalieDetectee = OUI;
    longjmp( Bb->EnvBB , Bb->AnomalieDetectee ); 
  }
  NombreDeNoeudsAExplorerAuProchainEtage = 0;
  for( i = 0 ; i < NombreDeNoeudsAExplorer ; i++ ) {
    NoeudCourant = NoeudsAExplorer[i]; 
    if ( NoeudCourant != 0 ) {
      if ( NoeudCourant->StatutDuNoeud == EVALUE && NoeudCourant->NoeudTerminal != OUI ) {
        /* Doit avoir au moins 1 fils a evaluer */	
        Noeud = NoeudCourant->NoeudSuivantGauche;
        if ( Noeud != 0 ) {
	  if ( Noeud->StatutDuNoeud == A_EVALUER ) {	    
      if ( NoeudCourant->MinorantDuCritereAuNoeud > SeuilPourLEvaluation ) {
        Bb->NoeudEnExamen = NoeudCourant;
	      # if VERBOSE_BB == 1
				  printf("Evaluation en profondeur a partir de %X\n", Bb->NoeudEnExamen);
        # endif
				BB_BalayageEnProfondeur( Bb, Bb->NoeudEnExamen, Bb->NoeudEnExamen->ProfondeurDuNoeud );		
	      # if VERBOSE_BB == 1
	        printf("Fin Evaluation en profondeur\n");
        # endif
	      goto Next;
	    }
	  }
	}	
        Noeud = NoeudCourant->NoeudSuivantDroit;
        if ( Noeud != 0 ) {
	  if ( Noeud->StatutDuNoeud == A_EVALUER ) {       	
      if ( NoeudCourant->MinorantDuCritereAuNoeud > SeuilPourLEvaluation ) {
        Bb->NoeudEnExamen = NoeudCourant;				
	      # if VERBOSE_BB == 1
	        printf("Evaluation en profondeur a partir de %X\n", Bb->NoeudEnExamen);
        # endif
        BB_BalayageEnProfondeur( Bb, Bb->NoeudEnExamen, Bb->NoeudEnExamen->ProfondeurDuNoeud );		
	      # if VERBOSE_BB == 1
	        printf("Fin Evaluation en profondeur\n");
        # endif
      }
	  }
	}
      }     
      /* Renseigner la table des noeuds du prochain etage */
      Next:
      Noeud = NoeudCourant->NoeudSuivantGauche;
      if ( Noeud != 0 ) {
        NombreDeNoeudsAExplorerAuProchainEtage++;
        NoeudsAExplorerAuProchainEtage[NombreDeNoeudsAExplorerAuProchainEtage-1] = Noeud;
        
      }
      Noeud = NoeudCourant->NoeudSuivantDroit;
      if ( Noeud != 0 ) {
        NombreDeNoeudsAExplorerAuProchainEtage++;
        NoeudsAExplorerAuProchainEtage[NombreDeNoeudsAExplorerAuProchainEtage-1] = Noeud;          
      }
    }
  } 
                        /* Preparations pour l'etage suivant */
  if( NombreDeNoeudsAExplorerAuProchainEtage == 0 ) break; /* Exploration de l'arbre terminee */
  free( NoeudsAExplorer );
  NoeudsAExplorer = (NOEUD **) malloc( NombreDeNoeudsAExplorerAuProchainEtage * sizeof( void * ) );
  if ( NoeudsAExplorer == NULL ) { 
    printf("\n Saturation memoire dans la partie branch & bound, fonction: BB_EliminerLesNoeudsSousOptimaux 3 \n");
    Bb->AnomalieDetectee = OUI;
    longjmp( Bb->EnvBB , Bb->AnomalieDetectee ); 
  }
  NombreDeNoeudsAExplorer = NombreDeNoeudsAExplorerAuProchainEtage; 
  for( i = 0 ; i < NombreDeNoeudsAExplorer ; i++ ) {
    NoeudsAExplorer[i] = NoeudsAExplorerAuProchainEtage[i];
  }
  free( NoeudsAExplorerAuProchainEtage );
/* fin while */
}	    

/*FinRechercheNoeudsActifs:*/

free( NoeudsAExplorer );
free( NoeudsAExplorerAuProchainEtage );

return;

}







