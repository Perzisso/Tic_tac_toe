class Board
# 1 attr_accessor : un array/hash qui contient les BoardCases / Option : un @count_turn pour compter le nombre de coups joué
attr_accessor :board
    # Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    # Ces instances sont rangées dans un array .hash qui est l'attr_accessor de la classe
    def initialize(board)
        @board =  [*0..8].map { |i|  BoardCase.new(i).case_number }
    end

    # Une méthode qui : demande au joueur ce qu'il veut faire + change le BoardCases jouée en fct de la valeur (X ou 0)
    def play_turn(symbol)
        case_number = gets.chomp().to_i
        @board = @board.each_index.map { |e| e == case_number && @board[e] != "X" && @board[e] != "0" ? @board[e] = symbol : @board[e] }
    end

    # Une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    def victory?
        if (@board[0] == @board[1] && @board[0] == @board[2]) || (@board[3] == @board[4] && @board[3] == @board[5]) || (@board[6] == @board[7] && @board[6] == @board[8] ) || (@board[0] == @board[3] && @board[0] == @board[6]) || (@board[1] == @board[4] && @board[1] == @board[7]) || (@board[2] == @board[5] && @board[2] == @board[8]) ||( @board[0] == @board[4] && @board[0] == @board[8]) || (@board[2] == @board[4] && @board[2] == @board[6])
            return true
        else
            return false
        end
    end

end