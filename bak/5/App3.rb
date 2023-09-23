puts "Введите значение A: "
a = gets.to_f

puts "Введите значение B: "
b = gets.to_f

puts "Что будем делать? ( + - * / ): "
format = gets.strip

if b == 0 && format == "/"
  puts "На ноль делить нельзя!"
  exit
end

total = 0

if format == "+"
  total = a + b
  puts "Результат: #{total}"
elsif format == "-"
  total = a - b 
  puts "Результат: #{total}"
elsif format == "*"
  total = a * b
  puts "Результат: #{total}"
else total == "/"
  total = a / b
  puts "Результат: #{total}"
end

puts "Нажмите Enter для выхода"
gets