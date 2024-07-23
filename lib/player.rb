class Player
  def initialize(mark)
    @mark = mark
    @moves = []
  end
  
  def chaal
    @retries = 0
    xo = gets.chomp
    while retries < 3
      if xo < 1 || xo > 9
        @retries += 1
        puts "Please enter valid input"
      else
        @moves.push(xo)
        return xo.to_i
      end
    end
  end
end
