require_relative "toy_robot"
require_relative "board"

class Cli

  VALID_COMMANDS = ["PLACE [X,Y,DIRECTION]", "MOVE", "LEFT", "RIGHT", "REPORT"]

    @cli = Cli.new

  def welcome
    puts "==> Welcome to the toy robot ruby application!"
    puts "==> From the terminal you can issue commands to the robot to perform certain actions."
    puts "==> The permitted commands are #{VALID_COMMANDS.join(",")}."
    puts "==> Note: A valid PLACE command looks like PLACE 0,0,NORTH"
    puts "==> You can hit Ctrl-C at any time to quit."
  end

  def valid_command?(command)
    VALID_COMMANDS.include?(command)
  end

  def user_command
    loop do
      puts "==> Enter a command.."
      input = gets.chomp.upcase
        if input.start_with?("PLACE")
          place_command(input)
        elsif input.start_with?("MOVE")
          move_command
        elsif input.start_with?("REPORT")
          report_command
        elsif input.start_with?("LEFT")
          left_command
        elsif input.start_with?("RIGHT")
          right_command
       end
    end
  end

  def place_command(command)
      command.gsub!("PLACE", "")
      x_coordinate, y_coordinate, direction = command.split(",")
      @toy_robot = ToyRobot.new
      @toy_robot.place(x_coordinate.to_i, y_coordinate.to_i, direction)
  end

  def move_command
    @toy_robot.move
  end

  def left_command
    @toy_robot.left
  end

  def right_command
    @toy_robot.right
  end

  def report_command
    @toy_robot.report
  end

@cli.welcome
@cli.user_command

end
