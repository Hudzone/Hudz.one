print "Enter your name: "
x = gets.chomp

10.times do
	x.size.times do |i|
	print x[i]
	d = rand(0.3)
	sleep d
	print "-"
	end
	
	print " "
end