class Airport

  attr_reader :name
  attr_accessor :hungar

  def initialize name
    @name = name
    @hungar = []
  end

  def add_airplane plane
    @hungar << plane
  end

  def show_hangar
    @hungar.each do |plane|
      puts "#{plane.model}"
    end
  end

end

class Airplane

  attr_reader :model

  def initialize model
    @model = model
  end

end

class Country

  attr_reader :name
  attr_accessor :airports

  def initialize name
    @name = name
    @airports = []
  end

  def add_airport title
    @airports << title
  end

  def show_airports
    @airports.each do |airport|
      puts "В стране #{@name} построен аэропорт #{airport.name}"
    end
  end

end

#Создаем страны

RUS = Country.new ('Russia')
USA = Country.new ('USA')

#Строим аэропорты

sviblovo = Airport.new 'Sviblovo'
domodedovo = Airport.new 'Domodedovo'
kennedi = Airport.new 'Kennedi'
seattle = Airport.new 'Seattle'


RUS.add_airport sviblovo
RUS.add_airport domodedovo

USA.add_airport kennedi
USA.add_airport seattle


RUS.show_airports
puts
USA.show_airports
puts

#Строим самолеты
rus_plane1 = Airplane.new 'SU-34'
rus_plane2 = Airplane.new 'SU-35'
rus_plane3 = Airplane.new 'TU-79'
rus_plane4 = Airplane.new 'Gorynich-2021'

us_plane1 = Airplane.new 'Boeing - 747'
us_plane2 = Airplane.new 'Superjet - 200'
us_plane3 = Airplane.new 'Boeing - 888'
us_plane4 = Airplane.new 'Hamburger-2021'

#Отправляем самолеты по странам и аэропортам

sviblovo.add_airplane rus_plane1
sviblovo.add_airplane rus_plane2
domodedovo.add_airplane rus_plane3
domodedovo.add_airplane rus_plane4

kennedi.add_airplane us_plane1
kennedi.add_airplane us_plane2
seattle.add_airplane us_plane3
seattle.add_airplane us_plane4

#Выводим информацию о самолетах по аэропортам
puts "===| #{RUS.name} |==="
puts "В аэропорту #{sviblovo.name} следующий парк самолетов: "
sviblovo.show_hangar
puts "В аэропорту #{domodedovo.name} следующий парк самолетов: "
domodedovo.show_hangar
puts

puts "===| #{USA.name} |==="
puts "В аэропорту #{kennedi.name} следующий парк самолетов: "
kennedi.show_hangar
puts "В аэропорту #{seattle.name} следующий парк самолетов: "
seattle.show_hangar