# Class game that contains all others
# Class player (contains 2 players) 
# Class display current position
require_relative 'lib/display'

class PlayGame
  @turn = 0

  def initialize
    @game = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    self.display()
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
