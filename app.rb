require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/show'
require_relative 'lib/boardcase'
require_relative 'lib/board'

class Application

    # initialise et boucler (while) tant que la partie n'est pas terminée (true/false)

    def perform
      Game.new.go
      while @board.victory? == false
        self.turn
      end
    end

end

puts "end of file"