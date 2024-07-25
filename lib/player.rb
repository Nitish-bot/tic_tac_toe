class Player
  attr_reader :mark, :moves

  def initialize(mark)
    @mark = mark
    @moves = []
  end
  
  def chaal
    print "Player with '#{self.mark}' mark, enter your move!\n"
    xo = gets.chomp.to_i
    if xo < 1 || xo > 9 || !xo.is_a?(Integer)
      puts "Please enter valid input"
    else
      @moves.push(xo - 1)
      return (xo - 1)
    end
  end
end
