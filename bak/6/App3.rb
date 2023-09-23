$a = 1

def get_password
  $a = 10
  print "Type password: "
  gets.chomp
end

xx = get_password

puts "The password is #{xx}"

puts "Variable a = #{$a}"