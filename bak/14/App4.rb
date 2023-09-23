#Класс записной книжки
class Book

  attr_reader :last_person

  def initialize
    @hash = {}
    @last_person = ''
  end


  def add_person options
    if @hash[options[:name]]
      puts "Есть такое имя."
    end
    @hash[options[:name]] = options[:age]
    @last_person = options[:name]
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
b.add_person name:'Masha ', age:17

puts
puts
puts "=====| Справочник |====="
b.show_book
puts "Последний добавленный: #{b.last_person}"