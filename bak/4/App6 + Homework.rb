print "How much money we will keep?: "
money = gets.to_f

print "How many months we will do it?: "
months = gets.to_i

summa = 0 

1.upto(months) do |mm|
		total = summa + money
		puts "Total for #{mm} month is: #{total}"

	puts
end


