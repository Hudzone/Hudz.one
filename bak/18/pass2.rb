#Если пишем функцию которая возвращает true или false мы должны ставить в функции знак вопроса

$input = File.open "passwords.txt" , "r"


def is_password_weak? pass

  while (line = $input.gets)
    line.strip!

    if pass.include? line
      return true
    end
  end

  return false

end


print "Введите пароль: "
user_input = gets.strip

if is_password_weak? user_input
  puts "Твой пароль ненадежен!"
else
  puts "Твой пароль надежен!"
end