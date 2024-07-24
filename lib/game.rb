class Game
  attr_reader :turn, :game, :player_one, :player_two
  @turn = 0

  def initialize
    @game = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @player_one = Player.new('X')
    @player_two = Player.new('Y')
    self.display()
  end
end
