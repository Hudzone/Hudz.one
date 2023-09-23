puts "Welcome to the game."
puts "Press Enter to continue..."
gets

user_results = 0
computer_results = 0

loop do
	puts "(R)ock, (P)aper or (S)cissors?: "
	puts "If you need to exit, type E"
	print "Enter the command:  "
	user_choice = gets.strip.capitalize
	puts

	if user_choice == "R"
		user_choice = :rock
	elsif user_choice == "P"
		user_choice = :paper
	elsif user_choice == "S"
		user_choice = :scissors
	elsif user_choice == "E"
		break
	else
		puts "Dont understand your choice! Try again!"
		puts
		puts 
	end

	value = [:rock,:paper,:scissors]
	computer_choice = value[rand(0..2)]

	puts "#{user_choice} (PLAYER) VS. #{computer_choice} (COMPUTER)"

	#Добавляем матрицу значений

	matrix = [

		#Добавляем значения для ничьей
		[:rock,:rock,:draw],
		[:paper,:paper,:draw],
		[:scissors,:scissors,:draw],
		#Добавляем значение для камня
		[:rock,:paper,:second_win],
		[:rock,:scissors,:first_win],
		#Добавляем значения для бумаги
		[:paper,:rock,:first_win],
		[:paper,:scissors,:second_win],
		#Добавляем значения для ножниц
		[:scissors,:rock,:second_win],
		[:scissors,:paper,:first_win]

	]

	matrix.each do |item|
		if item[0] == user_choice && item[1] == computer_choice
			
			if item[2] == :draw
				puts "NOBODY WINS!"
			elsif item[2] == :first_win
				puts "YOU WIN!"
				user_results = user_results + 1
			elsif item[2] == :second_win
				puts "YOU LOSE! :) HA-HA-HA :)"
				computer_results = computer_results + 1
			end

		end
	end	
end

puts "==========|RESULTS|=========="
puts "YOUR SCORE: #{user_results}"
puts "COMPUTER SCORE: #{computer_results}"

if user_results > computer_results
	puts "YOU WIN! CONGRATULATIONS!"
else
	puts "HA-HA-HA RETARD! YOU LOSE!"
	puts "FUCK YOU!" * 100
end