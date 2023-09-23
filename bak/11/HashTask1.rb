pn_database = {}

loop do 

	puts "Phone database"

	print "Type name (Enter to stop): "
	abonent_name = gets.strip.capitalize

	if abonent_name == ""
		break
	end

	print "Enter phone number: "
	phone_number = gets.to_s.strip

	pn_database[abonent_name] = phone_number

	puts
end

loop do 
	puts "Phone book opens: "
	x = 0
	pn_database.each do |key, value|
		x = x + 1
		puts "#{x}. #{key}"
	end

	print "Whose number do you want to know: (exit if you want to leave programm)"
	selection = gets.strip.capitalize
	puts
	puts

	if selection == 'Exit'
		exit
	end

	puts "#{selection}'s phone number is #{pn_database[selection]}."
	puts
	puts
end