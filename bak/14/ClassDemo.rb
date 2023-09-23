#Класс записной книжки
class Book

  def initialize
    @hash = {}
  end


  def add_person options
    if @hash[options[:name]]
      puts "Есть такое имя. Данный контакт добавлен не будет!"
      return
    end
    @hash[options[:name]] = options[:age]
  end

  def show_book
    #показывает хэш
    x = 0
    @hash.each do |name, age|
      x = x + 1
      puts "#{x}. #{name}, #{age}"
    end
  end
end

b = Book.new
b.add_person name:'Walt', age:50
b.add_person name:'Fyodor', age:28
b.add_person name:'Margo', age:17

puts
puts
puts "=====| Справочник |====="
b.show_book