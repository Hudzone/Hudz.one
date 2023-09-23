print "How many years you can collect money: "
god = gets.to_i

print "How much money can you collect:  "
mon = gets.to_f

1.upto(god) do |yy|
	1.upto(12) do |mm|
	total = (mon * mm) * yy
	puts "Год #{yy}, месяц #{mm}, отложено - #{total}"
	end
end