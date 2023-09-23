puts "Enter your Name: "
name = gets.chomp

puts "How much times you'd like to play?: "
modificator = gets.to_i

x = rand(1..50)

1.upto(modificator) do |tm|
  puts "#{tm} try"
    if x == 33
      puts "Congratulations, #{name}! Your are US Citizen!"
    else 
      next
    end
end

puts "To exit the program use Enter"
gets