arr = []

loop do
  puts "Enter name: "
  name = gets.strip.capitalize

  puts "Enter age: "
  age = gets.to_f

  break if name == "" || age == ""
  
  arr << [ name, age ]
end

x = 0
  arr.each do |name, age|
    x += 1
    puts "#{x}. #{name}. Age: #{age}"
  end