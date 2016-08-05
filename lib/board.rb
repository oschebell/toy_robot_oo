class Board

attr_reader :width, :height

  def initialize
    @width = 5
    @height = 5
  end

  def valid_placement?(x_coordinate, y_coordinate)
    x_coordinate.between?(0, width) && y_coordinate.between?(0, height)
  end
end
