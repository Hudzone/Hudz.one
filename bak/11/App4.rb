hh = {'Cat' => ['Кот','Кошка'],'Dog' => ['Cобака', 'Пес', 'Блохастый'],'Girl' => ['Девушка', 'Тянка', 'Гирла']}

puts "===Словарь==="

hh.each do |key,value|
  puts "#{key}"
end

print "Какое слово перевести: "
wwt = gets.strip.capitalize

puts "Информация о слове #{wwt}"
puts "Количество переводов: #{hh[wwt].count}"
puts "Переводы: "

x = 0
hh[wwt].each do |word|
  x = x + 1
  puts "#{x}. #{word}"
end