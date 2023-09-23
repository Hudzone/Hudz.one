puts "Добро пожаловать в крестики-нолики"

@matrix = {
    'x1y1' =>'x1y1',
    'x1y2' => 'x1y2',
    'x1y3' => 'x1y3',
    'x2y1' => 'x2y1',
    'x2y2' => 'x2y2',
    'x2y3' => 'x2y3',
    'x3y1' => 'x3y1',
    'x3y2' => 'x3y2',
    'x3y3' => 'x3y3'
  }

def interface
  puts "x = y1 = y2 = y3"
  puts "x1 = #{@matrix['x1y1']} = #{@matrix['x1y2']} = #{@matrix['x1y3']}"
  puts "x2 = #{@matrix['x2y1']} = #{@matrix['x2y2']} = #{@matrix['x2y3']}"
  puts "x3 = #{@matrix['x3y1']} = #{@matrix['x3y2']} = #{@matrix['x3y3']}"
end

loop do
  
  puts
  puts "================================================"
  interface

  print "Вы играете за крестики. Выбирайте ячейку:  "
  user_choice = gets.strip
  
  if user_choice == @matrix[user_choice]
    @matrix[user_choice] = 'X'
  end

  puts
  puts "Результаты вашего хода: "
  interface


  computer_matrix = @matrix.to_a
  computer_choice = computer_matrix[rand(0..8)][0]

  @matrix.each do |key,value|
    if computer_choice == key
      next if computer_choice == user_choice
      @matrix[computer_choice] = 'O'
      break if computer_choice != user_choice
    end
  end

  puts
  puts "Результаты хода компьютера: "
  interface

  #Логика для крестиков
  if @matrix['x1y1'] == 'X' && @matrix['x1y2'] == 'X' && @matrix['x1y3'] == 'X'
    puts "Вы победили"
    exit
  elsif @matrix['x2y1'] == 'X' && @matrix['x2y2'] == 'X' && @matrix['x2y3'] == 'X'
    puts "Вы победили"
    exit
  elsif @matrix['x3y1'] == 'X' && @matrix['x3y2'] == 'X' && @matrix['x3y3'] == 'X'
    puts "Вы победили"
    exit
  elsif @matrix['x1y1'] == 'X' && @matrix['x2y1'] == 'X' && @matrix['x3y1'] == 'X'
    puts "Вы победили"
    exit
  elsif @matrix['x1y2'] == 'X' && @matrix['x2y2'] == 'X' && @matrix['x3y2'] == 'X'
    puts "Вы победили"
    exit
  elsif @matrix['x1y1'] == 'X' && @matrix['x2y2'] == 'X' && @matrix['x3y3'] == 'X'
    puts "Вы победили"
    exit
  elsif @matrix['x1y3'] == 'X' && @matrix['x2y2'] == 'X' && @matrix['x3y1'] == 'X'
    puts "Вы победили"
    exit
  end

  #Логика для ноликов


    if @matrix['x1y1'] == 'O' && @matrix['x1y2'] == 'O' && @matrix['x1y3'] == 'O'
    puts "Ты проиграл, кожанное хуйло! Слава роботам!"
    exit
  elsif @matrix['x2y1'] == 'O' && @matrix['x2y2'] == 'O' && @matrix['x2y3'] == 'O'
    puts "Ты проиграл, кожанное хуйло! Слава роботам!"
    exit
  elsif @matrix['x3y1'] == 'O' && @matrix['x3y2'] == 'O' && @matrix['x3y3'] == 'O'
    puts "Ты проиграл, кожанное хуйло! Слава роботам!"
    exit
  elsif @matrix['x1y1'] == 'O' && @matrix['x2y1'] == 'O' && @matrix['x3y1'] == 'O'
    puts "Ты проиграл, кожанное хуйло! Слава роботам!"
    exit
  elsif @matrix['x1y2'] == 'O' && @matrix['x2y2'] == 'O' && @matrix['x3y2'] == 'O'
    puts "Ты проиграл, кожанное хуйло! Слава роботам!"
    exit
  elsif @matrix['x1y1'] == 'O' && @matrix['x2y2'] == 'O' && @matrix['x3y3'] == 'O'
    puts "Ты проиграл, кожанное хуйло! Слава роботам!"
    exit
  elsif @matrix['x1y3'] == 'O' && @matrix['x2y2'] == 'O' && @matrix['x3y1'] == 'O'
    puts "Ты проиграл, кожанное хуйло! Слава роботам!"
    exit
  end
end