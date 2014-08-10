class Length
  attr_accessor :value
  def initialize(value)
    @value = value
  end
  def is_equal(another_length)
    return @value == another_length.value
  end
  def plus(another_length)
    return Length.new @value + another_length.value
  end
  def subtract(another_length)
    return Length.new @value - another_length.value
  end
end