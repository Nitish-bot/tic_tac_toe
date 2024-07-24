# Class game that contains all others
# Class player (contains 2 players) 
# Class display current position
require_relative 'lib/display'
require_relative 'lib/player'
require_relative 'lib/game'

class PlayGame < Game
  def initialize
    Game.new()
  end

  def display
    Display.new(@game)
  end
end
