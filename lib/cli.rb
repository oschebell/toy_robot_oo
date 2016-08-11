require_relative "toy_robot"
require_relative "board"

class Cli

  VALID_COMMANDS = ["PLACE [X,Y,DIRECTION]", "MOVE", "LEFT", "RIGHT", "REPORT"]


    @cli = Cli.new


  def welcome
    puts "==> Welcome to the toy robot ruby application!"
    puts "==> From the terminal you can issue commands to the robot to perform certain actions."
    puts "==> The permitted commands are #{VALID_COMMANDS.join(",")}."
    puts "==> You can hit Ctrl-C at any time to quit."
  end

  def valid_command?(command)
    VALID_COMMANDS.include?(command)
  end

  def user_command
    loop do
      puts "==> Enter a command."
      issued_command(gets.chomp.upcase)
    end
  end

  def issued_command(command)
      @toy_robot = ToyRobot.new
    if command.start_with?("PLACE")
      command.gsub!("PLACE", "")
      x_coordinate, y_coordinate, direction = command.split(",")
      @toy_robot.place(x_coordinate, y_coordinate, direction)
    else
      puts "hi Rebecca!"
    end
  end

@cli.welcome
@cli.user_command


end
