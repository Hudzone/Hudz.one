print "Введите пароль: "
user_input = gets.strip

input = File.open "passwords.txt" , "r"

while (line = input.gets)
  line.strip!

  if user_input.include? line
    puts "Твой пароль слабоват, дружочек!"
    exit
  end
end

puts "Твой пароль надежен!"
gets