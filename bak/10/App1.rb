people = ["walt","hank","junior","jessy","lidia"]

loop do 

  x = 0

  people.each do |name|
    x = x + 1
    puts "#{x}.#{name}"
  end

  print "Кого удалить? (порядковый номер): "
  choise = gets.to_i
  puts

  choise = choise - 1
  who = people[choise]
  puts "Будет удален #{who}"

  people.delete_at choise

end