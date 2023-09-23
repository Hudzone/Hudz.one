#English - Русский словарь

#Определяем хэш
@dictionary = {'Dog' => ['Собака'], 'Cat' => ['Кошка'], 'Girl' => ['Девушка']}

#Определяем методы, которые будем использовать

def open_dict
  puts "Список слов: "

  x = 0
  @dictionary.each do |word,translation|
    x = x + 1
    puts "#{x}. #{word} - #{translation.count} переводов"
  end
end

def dict_manager
  loop do 

    puts '===Редактор словаря==='
    puts "1. Добавить слово"
    puts "2. Добавить значение к слову"
    puts "3. Удалить слово"
    puts "4. Выйти из редактора"

    choice = gets.to_i

    if choice == 1
      print 'Введите слово: '
      word_1 = gets.strip.capitalize

      if @dictionary.key?(word_1) == true
        puts "Такое слово уже есть!"
        break
      else
        @dictionary[word_1] = []
        loop do
          print "Введите значение для #{word_1} (либо нажмите Enter если вы закончили добавлять значения):  "
          translation = gets.strip.capitalize

          if translation == ''
            break
          end

          @dictionary[word_1] << translation
        end
      end
    elsif choice == 2
      print "Выберите слово, к которому вы хотите добавить значение:  "
      word_2 = gets.strip.capitalize

      if @dictionary.key?(word_2) == true
        loop do
          print "Введите значение для #{word_2} (либо нажмите Enter если вы закончили добавлять значения):  "
          meaning = gets.strip.capitalize

          if meaning == ''
            break
          end

          @dictionary[word_2] << meaning
        end
      else
        puts "Такого слова нет в словаре!"
        break
      end
    elsif choice == 3
      print "Какое бы слово вы хотели удалить:  "
      word_3 = gets.strip.capitalize

      if @dictionary.key?(word_3) == true
        @dictionary.delete(word_3)
      else
        puts "Такого слова нет в словаре!"
      end
    else
      break
    end
  end
end

def translate
  print 'Введите слово, которое хотели бы перевести: '
  word = gets.strip.capitalize
  puts

  if @dictionary.key?(word) == true
    puts "Значения слова #{word}"
    x = 0
    @dictionary[word].each do |value|
      x = x + 1
      puts "#{x}. #{value}"
      puts
    end
  else
    puts "Такого слова нет в словаре!"
    puts
  end
end


loop do
  puts "========================================"
  puts 'Добро пожаловать в наш словарь!'
  open_dict
  puts
  puts "====|Меню|===="
  puts "1. Узнать перевод слова"
  puts "2. Управлять словарем"
  puts "3. Выйти из программы"
  puts
  print "Ваше действие:  "
  choice = gets.to_i
  puts "========================================"

  if choice == 1
    puts
    puts
    translate
  elsif choice == 2 
    dict_manager
  else 
    exit
  end
end