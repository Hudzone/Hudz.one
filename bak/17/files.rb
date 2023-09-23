input = File.open "task.txt", "r"

arr = []

while (line = input.gets)
  puts line
  x = line.split
  arr << x
end

input.close

money = 0
money_6 = 0
arr.each do |month,sum|
  money = money + sum.to_i
end

y = 0
arr.each do |money,sum|
  y += 1

  if y > 6
    break
  end

  money_6 += sum.to_i
end

puts "За первые шесть месяцев заработано: #{money_6}"

puts "Итого заработано за год: #{money}"