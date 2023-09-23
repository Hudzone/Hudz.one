def is_password_weak? user_input

  input = File.open "passwords.txt", "r"

  while (line = input.gets)
    line.strip!

    if user_input.include? line
      return true
    end

  end

  return false

end

puts "========| PASSWORD INSPECTOR v.1.0 |========|"

loop do

  print "Ввод:  "
  x = gets.strip

  if is_password_weak? x
    puts "Твой пароль ненадежная хуйня, все переделывай дурак!"
  else
    puts "Заебись! Пароль надежен! Возьми с полки пряник!"
    break
  end

end