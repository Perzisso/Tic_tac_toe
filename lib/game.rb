class Game
# X attr_accessor : current_player ( = à un objet player) - le status (en cours, nul ou objet player si victoire) - Le board - un array contenant les 2 joueurs
   
    # Créer 2 joueurs , un board, met le status à "on going", défini un current_player
    def initialize(player1, player_2, board, status, current_player)

      # Create players
      @player1 = Player.new(name_1, "X")
      puts "Joueur 1, ton symbole sera X, choisis un nom: "
      print ">"
      name_1 = gets.chomp
      
      @player2 = Player.new(name_2, "0")
      puts "Joueur 2, ton symbole sera underscore 0 , choisis un nom: "
      print ">"
      name_2 = gets.chomp

      # Create board game
      @board = Board.new
      # Create current player
      @current_player = @player1
      # Create new status
      @status = "on going"
    end
    # méthode faisant appelle aux méthodes des autres classes (notamment instance board).
    # Affiche le plateau, demande au joueur ce qu'il joue, vérifie si winner, passe au joueur suivant si partie non finie
    def turn
      # Affiche le plateau :
      puts "Voici l'état du jeu :"
      @board.to_s
      # Boucle le requête du player et le changement de joueur tant qu'il n'y a pas de vainqueur
      while @board.victory? == false
        puts ""
        puts "C'est le tour de #{@current_player.name} avec les #{@current_player.symbol}"
        puts "Choisis une case"
        print ">"
        @board.play_turn(@current_player.symbol)
      end
      while @board.victory? == true
        break
        @board.play(@current_player.symbol)

        if @current_player == @player1
          @current_player = @player2
        else
          @current_player = @player1
        end
      end
    end

    # relance une partie en initializant un nouveau board mais en gardant les mêmes joueurs
    def new_round

    end

    # permet l'affichage de fin de partie quand un vainqueur est détecté ou si match nul
    def game_end
      if @board.victory? == true
        puts "Voici l'état du jeu:"
        @board.to_s
        puts "#{@current_player.name} a gagné !"
        puts "fin du jeu !"
      end
    end
end