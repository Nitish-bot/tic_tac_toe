# frozen_string_literal: true

# This is the main class game
class Game
  attr_reader :player_one, :player_two
  attr_accessor :turn, :game

  WIN_COMBOS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 4, 8],
                [0, 3, 6], [1, 4, 7], [2, 5, 8], [2, 4, 6]].freeze

  def initialize
    @turn = 1
    @game = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @player_one = Player.new('X')
    @player_two = Player.new('O')
    display
  end

  def play
    until win_check(turn_decider)
      player = turn_decider
      record_turn(player)
      display
      if win_check(player)
        puts "Player '#{player.mark}' has won"
        break
      end
      self.turn = turn == 1 ? 2 : 1
    end
  end

  def turn_decider
    return player_one if turn == 1

    player_two
  end

  def record_turn(player)
    game[player.chaal(game)] = player.mark
  end

  def win_check(player)
    WIN_COMBOS.any? do |combo|
      combo.all? do |index|
        player.moves.include?(index)
      end
    end
  end

  def display
    Display.new(@game)
  end
end
