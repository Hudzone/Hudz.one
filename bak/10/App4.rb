sym = [:rock, :scissors, :paper]

puts "Welcome to (R)ock, (S)cissors, (P)aper"
print "YOUR CHOICE:  "
user_choice = gets.strip.capitalize

computer_choice = sym[rand(0..2)]

puts "#{user_choice} VS. #{computer_choice}"

if user_choice == "R" && computer_choice == sym[0]
  puts "Nobody wins"
elsif user_choice == "R" && computer_choice == sym[1]
  puts "YOU WIN!"
elsif user_choice == "R" && computer_choice == sym[2]
  puts "YOU LOSE!"
end

if user_choice == "S" && computer_choice == sym[0]
  puts "YOU LOSE!"
elsif user_choice == "S" && computer_choice == sym[1]
  puts "Nobody wins"
elsif user_choice == "S" && computer_choice == sym[2]
  puts "YOU WIN!"
end

if user_choice == "P" && computer_choice == sym[0]
  puts "YOU WIN!"
elsif user_choice == "P" && computer_choice == sym[1]
  puts "YOU LOSE"
elsif user_choice == "P" && computer_choice == sym[2]
  puts "Nobody wins"
end