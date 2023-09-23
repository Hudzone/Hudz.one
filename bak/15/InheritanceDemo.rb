class Animal

  attr_reader :name

  def initialize name
    @name = name
  end

  def run
    puts "#{@name} is running..."
  end

  def jump
    puts "#{name} is jumping..."
  end
end


class Cat < Animal

  def initialize
    super 'cat' #вызов конструктора из родительского класса
  end

end

class Dog < Animal

end

cat = Cat.new
dog = Dog.new

cat.run
dog.jump