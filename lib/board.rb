class Board

  def valid_placement?(x, y)
      x.between?(0, 5) && y.between?(0, 5)
  end


end
