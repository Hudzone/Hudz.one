add_10 = lambda { |x| x + 10 }
add_20 = lambda { |x| x + 20 }
sub_5 = lambda { |x| x - 5}

hh = { 111 => add_10, 222 => add_10, 333 => add_20, 444 => add_20, 555 => add_20, 666 => sub_5, 777 => sub_5, 888 => sub_5, 999 => sub_5}


puts 'Добро пожаловать в однорукого бандита!'
print 'Сколько денег готовы положить?: '
money = gets.to_i

loop do
  puts 'Нажмите Enter чтобы крутануть ручку!'
  gets

  computer = rand(100..999)

  
  puts "Ваш баланс: #{money}"

  puts "Ваша комбинация #{computer}"

  if hh[computer] #ставим условие что такой ключ есть в хэше
    value = hh[computer] #записываем комбинацию в переменную
    money = value.call money #вызываем лямбду

    puts "Ваш баланс: #{money}"
  else 
    money = sub_5.call money
    puts "Ваш баланс: #{money}"
  end

end