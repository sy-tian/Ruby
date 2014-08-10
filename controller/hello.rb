class Hello
  attr_accessor :name
  def initialize(name)
    @name = name
  end
   def say_hello
     puts 'hello ' + name
   end
end

my_hello = Hello.new('Angela')
my_hello.say_hello


