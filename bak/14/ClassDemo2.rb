#создаем класс
class Airplane
  #добавляем переменные в аттрибутах, которые не смогут быть изменены вручную, без использования метода
  attr_reader :model
  attr_reader :speed
  attr_reader :altitude
  #добавляем переменные в атрибутах, которые смогут быть изменены без использования метода

  #инициализируем глобальные для класса переменные
  def initialize(model)
    @model = model #модель
    @speed = 0     #скорость
    @altitude = 0  #высота
  end
  
  #создаем метод с действием полета
  def fly
    @speed = 800
    @altitude = 10000
  end

  #создаем метод с действием преземления
  def land
    @speed = 0
    @altitude = 0
  end

  #Чтобы узнать статус, нам нужно сравнение
  def status?
   @speed > 0
  end

end

#Создадим пул моделей
models = ['Airbus-320', 'Boeing-777', 'IL-86']
#Создадим массив парка самолетов
planes = []

#Создаем 100 экземпляров класса, запустим их в случайном порядке
100.times do 
  model = models[rand(0..2)]
  plane = Airplane.new(model)
  
  planes << plane

  if rand(0..1) == 1
    plane.fly
  end
end

#Выводим информацию о каждом созданном самолете
planes.each do |plane|
  puts "Модель самолета: #{plane.model}"
  puts "Скорость: #{plane.speed}"
  puts "Высота: #{plane.altitude}"
  puts "Самолет летит: #{plane.status?}"
  puts
end