class Game
  attr_reader :player_one, :player_two
  attr_accessor :turn, :game
    
  def initialize
    @turn = 0
    @game = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @player_one = Player.new('X')
    @player_two = Player.new('Y')
    self.display(@game)
  end

  def play()
    for i in 0...9

      unless wincheck
        self.player_one.chaal if self.turn % 2 == 0
        self.player_two.chaal if self.turn % 2 != 0
      else
        puts "somebody has won"
      end
    end
  end

  def wincheck
    
  end
end
