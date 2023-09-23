input = File.open "passwords.txt" , "r"

arr = []

while (line = input.gets)
  x = line.split ','
  value = x[0]
  arr << value

end

input.close



arr.each do |y|
  if y.size == 6
    puts y
  else next
  end
end