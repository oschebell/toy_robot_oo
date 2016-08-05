require_relative 'board'

class ToyRobot

  def place(x_coordinate, y_coordinate, direction)
    @board = Board.new
    if @board.valid_placement?(x_coordinate, y_coordinate)
      @x_coordinate = x_coordinate
      @y_coordinate = y_coordinate
      @direction = direction
      @placed
      puts "Robot placed at coordinates x:#{x_coordinate}, y:#{y_coordinate} and facing #{direction}."
    else
      puts "Invalid placement. Please try again."
    end
  end

  # def move
  #   if @x && @y && @direction != nil
  #     if @direction == "EAST" && @board.valid_placement?(@x+1, @y)
  #       @x = @x + 1
  #     elsif @direction == "NORTH" && @board.valid_placement?(@x, @y+1)
  #       @y = @y + 1
  #     elsif @direction == "SOUTH" && @board.valid_placement?(@x, @y-1)
  #       @y = @y - 1
  #     elsif @direction == "WEST" && @board.valid_placement?(@x-1, @y)
  #       @x = @x - 1
  #     else
  #       p "I'm sorry Dave, I can't do that..."
  #     end
  #   else
  #     p "You cannot issue commands until the robot has been placed."
  #   end
  # end
  #
  # def left
  #     if @direction == "NORTH"
  #       @direction = "WEST"
  #     elsif @direction == "WEST"
  #       @direction = "SOUTH"
  #     elsif @direction == "SOUTH"
  #       @direction = "EAST"
  #     elsif @direction == "EAST"
  #       @direction = "NORTH"
  #     end
  # end
  #
  # def right
  #   if @direction == "NORTH"
  #     @direction = "EAST"
  #   elsif @direction == "EAST"
  #     @direction = "SOUTH"
  #   elsif @direction == "SOUTH"
  #     @direction = "WEST"
  #   elsif @direction == "WEST"
  #     @direction = "NORTH"
  #   end
  # end
  #
  # def report
  #   p "#{@x}, #{@y}, #{@direction}"
  # end
 end

# toy_robot = ToyRobot.new
# #toy_robot.place(0, 0, "NORTH")
# toy_robot.report
# #Sample tests
# #a
# toy_robot = ToyRobot.new
# toy_robot.place(0, 0, "NORTH")
# toy_robot.move

#
# #b
# toy_robot = ToyRobot.new
# toy_robot.place(0, 0, "NORTH")
# toy_robot.left
# toy_robot.report
#
# #c
# toy_robot = ToyRobot.new
# toy_robot.place(1, 2, "EAST")
# toy_robot.move
# toy_robot.move
# toy_robot.left
# toy_robot.move
# toy_robot.report
#
# #d
# toy_robot = ToyRobot.new
# toy_robot.place(0, 5, "NORTH")
# toy_robot.move
# toy_robot.report

#d
toy_robot = ToyRobot.new
toy_robot.place(0, 5, "NORTH")
# toy_robot.move
# toy_robot.left
# toy_robot.left
# toy_robot.place(0, 0, "NORTH")
# toy_robot.left
# toy_robot.report
# toy_robot.left
# toy_robot.move
# toy_robot.left
# toy_robot.move
# toy_robot.report
