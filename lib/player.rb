class Player
  attr_reader :mark, :moves

  def initialize(mark)
    @mark = mark
    @moves = []
  end
  
  def chaal(game)
    print "Player with '#{self.mark}' mark, enter your move!\n"
    retries = 0
    while retries < 5
      xo = gets.chomp.to_i
      if xo < 1 || xo > 9 || !xo.is_a?(Integer) || !self.valid_moves(game).include?(xo)
        retries += 1
        puts "Please enter valid input"
      else
        @moves.push(xo - 1)
        print "\n"
        return (xo - 1)
      end
    end
  end

  def valid_moves(array)
    array.select {|position| position.is_a?(Integer)}
  end
end
