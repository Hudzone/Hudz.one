@hash = {}

def add_person name, age
  if @hash.key?(name) == true
    puts "Есть такое имя. Данный контакт добавлен не будет!"
    return
  end
  @hash[name] = age
end

def show_hash
  #показывает хэш
  x = 0
  @hash.each do |name, age|
    x = x + 1
    puts "#{x}. #{name}, #{age}"
  end
end

loop do
  #добавлять пока не введена пустая строка
  if @hash.empty? != true
    show_hash
  end

  print "Чтобы добавить контакт введите имя (чтобы завершить добавление нажмите enter):  "
  name = gets.strip.capitalize

  if name == ''
    break
  end

  print "Введите возраст:  "
  age = gets.to_i

  add_person name, age
end

puts
puts
puts "=====| Справочник |====="
show_hash