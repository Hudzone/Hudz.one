class Animal
  @name = 'Dog'
  def run
    puts "Running..."
  end

  def stop
    puts "Stoped"
  end

  def jump
    puts "Jumped"
  end


end

monkey = Animal.new
monkey.run

elephant = Animal.new
elephant.run