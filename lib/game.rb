class Game
# X attr_accessor : current_player ( = à un objet player) - le status (en cours, nul ou objet player si victoire) - Le board - un array contenant les 2 joueurs
   
    # Créer 2 joueurs , un board, met le status à "on going", défini un current_player
    def initialize

    end

    # méthode faisant appelle aux méthodes des autres classes (notamment instance board).
    # Affiche le plateau, demande au jour ce qu'il joue, vérifie si winner, passe au joueur suivant si partie non finie
    def turn

    end

    # relance une partie en initializant un nouveau board mais en gardant les mêmes joueurs
    def new_round

    end

    # permet l'affichage de fin de partie quand un vainqueur est détecté ou si match nul
    def game_end

    end

end