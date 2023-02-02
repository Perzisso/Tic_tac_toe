class Show
    # Afficher dans le terminal l'objet de la class Board

  def show_board
    puts "#{@board[0..2].join(" | ")}"
    puts "--|---|--"
    puts "#{@board[3..5].join(" | ")}"
    puts "--|---|--"
    puts "#{@board[6..8].join(" | ")}"
  end
end