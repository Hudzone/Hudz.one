print "Enter X: "
x = gets.chomp
print "Enter Y: "
y = gets.to_i
print "Enter Z: "
z = gets.to_f

#интерполяция строк #{variable}

puts "x = #{x} y = #{y} z = #{z}"

#способы убирания новой строки  \n
#1. str = gets.chomp

#2. str = gets
#   str = str.chomp

#3. str = gets
#   str.chomp! - восклицательный знак означает что операцию нужно проверсти с указанной переменной