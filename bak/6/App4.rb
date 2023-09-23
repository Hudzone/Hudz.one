# символы используем для ускорения и оптимизации, лежат в памяти в одном месте
def get_command
  return :left
end

command = get_command

puts "Получена команда #{command}"

if command == :left
  puts "Robot goes left"
end