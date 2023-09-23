hh = {'cat' => ['кот','кошка'], 'dog' => ['пес','собака'], 'girl' => ['девушка','краля','телочка']}

hh.each_key do |key|
  puts "Ключ: #{key}"
end

x = 0
hh.each_value do |value|
  y = value.count
  x = x + y
end

puts "Количество переводов: #{x}"