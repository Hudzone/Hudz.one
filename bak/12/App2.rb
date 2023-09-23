#однорукий бандит
matrix = {
  '111' => 10, 
  '222' => 20,
  '333' => 30,
  '444' => 50,
  '555' => 60,
  '666' => 70,
  '777' => 80,
  '888' => 90,
  '999' => 123,
  '148' => 10000
}



puts "Сколько денег хотели бы положить на счёт?"
wallet = gets.to_i

loop do
  numer = rand(111..999).to_s

  if wallet < 10
    puts "Вы нищеброд"
    exit
  end

  puts "Чтобы дернуть за ручку нажмите Enter (стоит 10$)"
  gets

  puts "Текущая комбинация: #{numer}"
  puts
  if matrix.key? numer
    wallet = wallet + matrix[numer]
    puts "Вы выиграли #{matrix[numer]}"
    puts "Кошелек: #{wallet}"
  else
    puts "Вы проиграли 10$"
    wallet = wallet - 10
    puts "Кошелек: #{wallet}"
  end
end