# Class game that contains all others
# Class player (contains 2 players) 
# Class display current position
require_relative 'lib/display'
require_relative 'lib/player'
require_relative 'lib/game'

class PlayGame
  def initialize
    Game.new()
  end

  def turn(x, y)
    @turn += 1

    case (x == 0)
    when true
      @game[y] = 'X'
    when false
      @game[y] = 'O'
    end
  end

  def display
    Display.new(@game)
  end
end
