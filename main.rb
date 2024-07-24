# Class game that contains all others
# Class player (contains 2 players) 
# Class display current position
require_relative 'lib/display'
require_relative 'lib/player'
require_relative 'lib/game'

class PlayGame
  def initialize
    new_game = Game.new()
    new_game.play
  end
end

PlayGame.new()
