require './rover_run'
require './point'
class Rover_Ulity
  attr_accessor :commands
  attr_accessor :rover
  attr_accessor :pattern

  def initialize(commands, rover)
    @commands = commands
    @rover = rover
    @pattern = %w('N' 'E' 'S''W')
  end

  def run
    if !is_commands_error?
      puts 'commands are error!'
    else
      @commands.split('').each do |command|
        move_by command
      end
    end
  end

  def move_by(command)
    case command
      when 'L'
        # turnLeft
        @rover.direction = 'W'
      when 'R'
        @rover.direction = 'E'
      else
        change_position_for_rover
    end
  end

  # def turnLeft
  #   @rover.direction = @pattern.get((@pattern.indexOf(direction) + 3) % @pattern.size());
  # end

  def change_position_for_rover
    case @rover.direction
      when 'N'
        @rover.position.y += 1
      when 'S'
        @rover.position.y -= 1
      when 'W'
        @rover.position.x -= 1
      when 'E'
        @rover.position.x += 1
    end
  end

  def is_commands_error?
    @commands.split('').each do |command|
       ['L', 'R', 'M'].include? command
    end
  end

  rover = Rover.new(Point.new(1, 1), 'N')
  rover_ulity = Rover_Ulity.new('LLL', rover)
  rover_ulity.run
  puts rover.position.x.to_s + rover.position.y.to_s + rover.direction

end