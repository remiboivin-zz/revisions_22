# Révision du Dimanche 22 Juillet 2018

### Contributeurs :
* Rémi Boivin

Ce projet à pour but de réviser les notions de classes nous avons donc choisi
de créer un jeu qui s'appelle awalé :

    L'awalé est un jeu d'origine affricaine. Il ce compose d'un plateau de
    6 cases creuses (3 cases de chaque cotés) et d'un certain nombre de cailloux


# Utilisation

  ## Installer les gems :

     bundle install

## Les règles du jeu :

   * Il faut déplacer 1,2,3 ou 4 cailloux (au choix) dans les cases.
   * On est obligé de poser au moins un cailloux dans la case pour pouvoir passer à la suivante.
   * Le premier qui est obligé de prendre le dernier cailloux à perdu

  ## Démarrer le script

    awale.rb démarre la partie

  ## Structure du programme

     * board

        ** Initialise 6 boardCase
        ** Fait le lien entre boardCase et Game
        ** Change l'état des instances boardCase

     * BoardCase

        ** Renseigne l'état de la case
        ** Remplis la case de 4 cailloux à l'initialisation

     * Player

        ** Un nom
        ** Un état
        ** Un camp

     * Rules

        * Vérifie si le coup est permis ou non

           ** Renvoit true si le coup est permis
           ** false si le coup ne l'es pas

              *** On n'a pas le droit d'affamer son adversaire
              *** On ne peut pas sauter d'une case
              *** On ne remplis pas la case où l'on prends les graines

        * Si on tombe dans une case adverse et qu'il y a 2 ou 3 cailloux le joueur
          les récupère et les mets de coté puis il regarde en arrière si il y a
          2 ou 3 cailloux si il y a 2 ou 3 caillous il les prends il continue comme ça
          jusqu'à revenir dans son camps ou qu'une des cases n'a pas assez de cailloux

     * Game

        ** Initialise une instance board
        ** initialise deux instances player
        ** Gère le jeu
        ** check si un joueur à gagné

## Répartition des tâches

   * Rémi => Création de l'exercice