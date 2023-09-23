def get_password
  print "Type password: "
  return gets.chomp
end

password = get_password

puts "Был введен пароль #{password}"