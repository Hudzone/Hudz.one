@people = []

def add_items
  loop do 
    puts "Enter name: (blank space to exit menu)"
    name = gets.strip.capitalize

    break if name == ""

    puts "Enter age: "
    age = gets.to_i

    @people << [name, age]
  end
end

def display_items
  puts "List of our customers: "

  z = 0
  @people.each do |x,y|
    z = z + 1
    puts "#{z}. #{x}, #{y}"
  end
end

def remove_items
  display_items
  print "Enter index of user: "
  user_id = gets.to_i

  @people.delete_at user_id - 1
end

def users
  x = 0
  @people.each do |name|
    x = x + 1
    puts "#{x}. #{name}"
  end
end

loop do

  if @people.empty? == false
    display_items
  end

  puts "What do you want to do: "
  puts "1. Add Items"
  puts "2. Delete Items"
  puts "0. Exit menu"

  choice = gets.to_i

  if choice == 1
    add_items
  elsif choice == 2
    remove_items
  elsif choice == 0
    break
  end

end

display_items