colors = []

loop do
  puts "Enter your favorite color or type stop"
  x = gets.chomp
  break if x == "stop"

  colors << x
end

y = 0

colors.each do |color_name|
  y = y + 1
  puts "#{y} color - #{color_name}" 
end