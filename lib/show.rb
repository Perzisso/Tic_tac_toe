require_relative 'lib/board'
require_relative 'lib/boardcase'

class Show
    # Afficher dans le terminal l'objet de la class Board

  def show_board
    puts "  #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts ' ---+---+---'
    puts "  #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts ' ---+---+--- '
    puts "  #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
end

