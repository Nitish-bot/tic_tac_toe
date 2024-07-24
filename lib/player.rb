class Player
  attr_reader :mark, :moves

  def initialize(mark)
    @mark = mark
    @moves = []
  end
  
  def chaal
    puts "Player with '#{self.mark}' mark, enter your move!\n"
    xo = gets.chomp
    if xo < 1 || xo > 9
      puts "Please enter valid input"
    else
      @moves.push(xo)
      return xo.to_i
    end
  end
end
