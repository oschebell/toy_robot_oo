class ToyRobot

  def place(x, y, direction)
    if x.between?(0, 5) && y.between?(0, 5)
      @x = x
      @y = y
      @direction = direction
    end
  end

  def report
    p "#{@x}, #{@y}, #{@direction}"
  end

  def move
    if @x == nil
      p "You cannot issue commands until the robot has been placed."
    else
      if @direction == "EAST" && (@x + 1 < 6 )
        @x = @x + 1
      elsif @direction == "NORTH" && (@y + 1 < 6 )
        @y = @y + 1
      elsif @direction == "SOUTH" && (@y - 1 >= 0 )
        @y = @y - 1
      elsif @direction == "WEST" && (@x - 1 >= 0 )
        @x = @x - 1
      else
        p "I'm sorry Dave, I can't do that..."
      end
    end
  end

  def left
      if @direction == "NORTH"
        @direction = "WEST"
      elsif @direction == "WEST"
        @direction = "SOUTH"
      elsif @direction == "SOUTH"
        @direction = "EAST"
      elsif @direction == "EAST"
        @direction = "NORTH"
      end
  end

  def right
    if @direction == "NORTH"
      @direction = "EAST"
    elsif @direction == "EAST"
      @direction = "SOUTH"
    elsif @direction == "SOUTH"
      @direction = "WEST"
    elsif @direction == "WEST"
      @direction = "NORTH"
    end
  end
end


#Sample tests
# #a
# toy_robot = ToyRobot.new
# toy_robot.place(0, 0, "NORTH")
# toy_robot.move
# toy_robot.report
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
# toy_robot = ToyRobot.new
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
