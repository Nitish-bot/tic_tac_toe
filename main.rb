# Class game that contains all others
# Class player (contains 2 players)
# Class display current position
# frozen_string_literal: true

require_relative 'lib/display'
require_relative 'lib/player'
require_relative 'lib/game'

# This manages all thigns player does
class PlayGame
  def initialize
    new_game = Game.new
    new_game.play
  end
end

PlayGame.new
