people = []

loop do

  if people.empty? == false
    x = 0
    people.each do |name|
      x = x + 1
      puts "#{x}. #{name}"
    end
  end

  print "Кого добавить в список: "

  vvod = gets.strip
  
  break if vvod == ""

  people << vvod.capitalize

end


puts "Список учеников: "
y = 0
people.each do |name|
  y = y + 1
  puts "#{y}. #{name}"
end