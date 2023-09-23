class Album

  attr_reader :title
  attr_accessor :album

  def initialize title
    @title = title
    @album = []
  end

  def add_song name
    @album << name
  end

  def present_album
    puts "Название альбома: #{@title}"
    puts "=====СПИСОК ПЕСЕН====="
    x = 0
    @album.each do |name|
      x = x + 1
      puts "#{x}. #{name.title}. Длительность: #{name.duration} минут."
    end
  end

end

class Song

  attr_reader :title, :duration

  def initialize title, duration
    @title = title
    @duration = duration
  end

end

class Artist

  attr_reader :name, :genre
  attr_accessor :album

  def initialize name, genre
    @name = name
    @genre = genre
    @albums = []
  end

  def add_album album
    @albums << album
  end

  def show_info
    puts "Исполнитель: #{@name}"
    puts "Жанр: #{genre}"

    @albums.each do |album|
      album.present_album
    end
  end
end

#Создаем исполнителя
sova = Artist.new 'Сова', 'SovietWave'

#Создаем альбом
album1 = Album.new 'В памяти навечно'

#Создаем песни
nebo = Song.new 'Небо', 6
chelovek = Song.new 'Человек', 3
pesni_staryh_kasset = Song.new 'Песни Старых Кассет', 5

#Добавляем песни в альбом
album1.add_song nebo
album1.add_song chelovek
album1.add_song pesni_staryh_kasset

#Присваиваем альбом исполнителю
sova.add_album album1

#Выводим информацию
sova.show_info