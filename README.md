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

  ## A propos du projet

     ### Structure du programme

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

         * Game

           ** Initialise une instance board
           ** initialise deux instances player
           ** Gère le jeu
           ** check si un joueur à gagné

## Répartition des tâches

   * Rémi => Création de l'exercice