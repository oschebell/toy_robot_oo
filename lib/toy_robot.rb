require_relative 'board'

class ToyRobot

  def place(x_coordinate, y_coordinate, direction)
    @board = Board.new
    if @board.valid_placement?(x_coordinate, y_coordinate)
      @x_coordinate = x_coordinate
      @y_coordinate = y_coordinate
      @direction = direction
      puts "Robot placed at coordinates x:#{x_coordinate}, y:#{y_coordinate} and facing #{direction}."
    else
      puts "Invalid placement. Please try again."
    end
  end

  def placed?
   !!@board
  end

  def calculate_move(x_coordinate, y_coordinate)
    if @direction == "NORTH"
      y_coordinate += 1
    elsif @direction == "EAST"
      x_coordinate += 1
    elsif @direction == "SOUTH"
      y_coordinate -= 1
    elsif @direction == "WEST"
      x_coordinate -= 1
    end
    return x_coordinate, y_coordinate
  end

  def move
    if placed?
      new_position_x, new_position_y = calculate_move(@x_coordinate, @y_coordinate)
      if @board.valid_placement?(new_position_x, new_position_y)
        @x_coordinate = new_position_x
        @y_coordinate = new_position_y
      else
        puts "Invalid move. Please try again."
      end
    else
      p "You cannot issue commands until the robot has been placed."
    end
  end

  def left
    if placed?


      #try rotate method


      if @direction == "NORTH"
        @direction = "WEST"
      elsif @direction == "WEST"
        @direction = "SOUTH"
      elsif @direction == "SOUTH"
        @direction = "EAST"
      elsif @direction == "EAST"
        @direction = "NORTH"
      end
    else
      p "You cannot issue commands until the robot has been placed."
    end
  end

  def right
    if placed?
      if @direction == "NORTH"
        @direction = "EAST"
      elsif @direction == "EAST"
        @direction = "SOUTH"
      elsif @direction == "SOUTH"
        @direction = "WEST"
      elsif @direction == "WEST"
        @direction = "NORTH"
      end
    else
      p "You cannot issue commands until the robot has been placed."
    end
  end

  def report
    puts "#{@x_coordinate}, #{@y_coordinate}, #{@direction}"
  end
 end
