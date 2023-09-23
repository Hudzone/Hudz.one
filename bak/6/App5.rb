
# символы используем для ускорения и оптимизации, лежат в памяти в одном месте
def get_command
  x = rand(0..3)
  array = [ :left, :right, :up, :down ]
  cmd = array[x]
end

command = get_command

puts "Получена команда #{command}"

if command == :left
  puts "Robot goes left"
elsif command == :right
  puts "Robot goes right"
elsif command == :up
  puts "Robot jumps"
else command == :down
  puts "Robot lies"
end

# stop 