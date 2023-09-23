print "Enter the String: "
x = gets.chomp

10.times do
	x.size.times do |y|
	print x[y]
	sleep 0.3
	print "-"
	end
	
	print " "
end 