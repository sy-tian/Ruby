class Length
  attr_accessor :value
  def initialize(value)
    @value = value
  end
  def is_equal(another_length)
    return @value == another_length.value
  end
end