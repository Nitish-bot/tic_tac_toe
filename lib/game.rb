class Game
  attr_reader :player_one, :player_two
  attr_accessor :turn, :game
  WIN_COMBOS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 4, 8],
    [0, 3, 6], [1, 4, 7], [2, 5, 8], [2, 4, 6]]

  def initialize
    @turn = 0
    @game = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @player_one = Player.new('X')
    @player_two = Player.new('O')
    self.display
  end

  def play
    for i in 0...9
      self.turn += 1
      player = turn_decider
      record_turn(player)
      if i > 5 && wincheck(player)
        puts "Player '#{player.mark}' has won"
      else
        self.display
      end
    end
  end

  def turn_decider
    if self.turn % 2 != 0
      return self.player_one
    else  
      return self.player_two
    end
  end

  def record_turn(player)
    self.game[player.chaal] = player.mark
  end

  def win_check(player)
    WIN_COMBOS.any? do |combo|
      combo.all? { |index| player.moves.include?(index)}
    end
  end

  def display
    Display.new(@game)
  end
end
