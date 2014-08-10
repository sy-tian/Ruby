require './point'
class Rover
   attr_accessor :position
   attr_accessor :direction

  def initialize(position, direction)
    @position = position
    @direction = direction
  end
  # def direction
  #   @direction
  # end
  # def position
  #   @position
  # end
end

