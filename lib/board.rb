class Board

attr_reader :width, :height

DIRECTIONS = ["NORTH", "EAST", "SOUTH", "WEST"]

  def initialize
    @width = 5
    @height = 5
  end

  def valid_placement?(x_coordinate, y_coordinate, direction)
    x_coordinate.to_i.between?(0, width-1) && y_coordinate.to_i.between?(0, height-1) && DIRECTIONS.include?(direction)
  end
end
