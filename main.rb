# Class game that contains all others
# Class player (contains 2 players) 
# Class display current position
require_relative 'lib/display'

class Game
  def initialize
    @game = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    self.display()
  end

  def display
    Display.new(@game)
  end
end

game = Game.new()
