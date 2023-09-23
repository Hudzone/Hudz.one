#Однорукий бандит

puts "Do you want to play?(Y/N): "
agreement = gets.strip.capitalize

if agreement == "N" 
  puts "You dont want to play! BYE!"
  puts "Quiting in 10 sec."

    1.upto(10) do |x|
      print "#{x}" + "\r"
      sleep 0.3 
    end

  abort
end

puts "Enter your age: "
age = gets.to_i

if age < 18
  puts "Go, drink Rastishka, dude!"
  puts "Quiting in 10 sec."

    1.upto(10) do |x|
      print "#{x}" + "\r"
      sleep 0.3 
    end

  abort
end

if age >= 18 && agreement == 'Y'
  puts "Let's Play!"

  sleep 1

  puts "Enter your name: "
  name = gets.chomp.strip.capitalize

  puts "Enter deposit ($): "
  deposit = gets.to_f

  puts  "How much times you want to play:  "
  tries = gets.to_i

  tries.times do 
    puts "Press Enter to Start!"
    gets

    
    m1 = rand(0..9)
    m2 = rand(0..9)
    m3 = rand(0..9)

    if m1 == 0 && m2 == 0 && m3 == 0
      puts "Combination is #{m1} - #{m2} - #{m3}"
      deposit = 0
      puts "You lost all the money! Your deposit is #{deposit}$."
        
      sleep 0.3
        
      puts "Do you like to continue?(Y/N): "
      sub_agreement = gets.strip.capitalize

        if sub_agreement == "Y"
          puts "Add deposit ($): "
          deposit = gets.to_f
        else sub_agreement == "N"
          puts "See you later!"
          puts "Quiting in 10 sec."

            1.upto(10) do |x|
              print "x" + "\r"
              sleep 0.3 
            end

          abort
        end
    elsif m1 == 1 && m2 == 1 && m3 == 1
      puts "Combination is #{m1} - #{m2} - #{m3}"
      deposit += 10
      puts "You earned 10$. Your deposit is #{deposit}$."

    elsif m1 == 2 && m2 == 2 && m3 == 2
      puts "Combination is #{m1} - #{m2} - #{m3}"
      deposit += 20
      puts "You earned 20$. Your deposit is #{deposit}$."

    elsif m1 == 3 && m2 == 3 && m3 == 3
      puts "Combination is #{m1} - #{m2} - #{m3}"
      deposit += 30
      puts "You earned 30$. Your deposit is #{deposit}$."

    elsif m1 == 4 && m2 == 4 && m3 == 4
      puts "Combination is #{m1} - #{m2} - #{m3}"
      deposit += 40
      puts "You earned 40$. Your deposit is #{deposit}$."

    elsif m1 == 5 && m2 == 5 && m3 == 5
      puts "Combination is #{m1} - #{m2} - #{m3}"
      deposit += 50
      puts "You earned 50$. Your deposit is #{deposit}$."

    elsif m1 == 6 && m2 == 6 && m3 == 6
      puts "Combination is #{m1} - #{m2} - #{m3}"
      deposit = deposit / 2
      puts "You lost 50 percent of deposit. Your deposit is #{deposit}$."

    elsif m1 == 7 && m2 == 7 && m3 == 7
      puts "Combination is #{m1} - #{m2} - #{m3}"
      deposit -= 70
      puts "You lost 70$. Your deposit is #{deposit}$."

        if deposit.negative?
          puts "Your deposit is negative - #{deposit}"

          sleep 0.3
        
          puts "Do you like to continue?(Y/N): "
          sub_agreement = gets.strip.capitalize

            if sub_agreement == "Y"
              puts "Add deposit ($): "
              deposit = gets.to_f
            else sub_agreement == "N"
              puts "Go to administrator and bring back your debt! See you later!"
              puts "Quiting in 10 sec."

                1.upto(10) do |x|
                  print "x" + "\r"
                  sleep 0.3 
                end
              abort
            end
        end
    
    elsif m1 == 8 && m2 == 8 && m3 == 8
      puts "Combination is #{m1} - #{m2} - #{m3}"
      deposit -= 80
      puts "You lost 80$. Your deposit is #{deposit}$."

        if deposit.negative?
          puts "Your deposit is negative - #{deposit}"

          sleep 0.3
        
          puts "Do you like to continue?(Y/N): "
          sub_agreement = gets.strip.capitalize

            if sub_agreement == "Y"
              puts "Add deposit ($): "
              deposit = gets.to_f
            else sub_agreement == "N"
              puts "Go to administrator and bring back your debt! See you later!"
              puts "Quiting in 10 sec."

                1.upto(10) do |x|
                  print "x" + "\r"
                  sleep 0.3 
                end
            abort
            end
        end

    elsif m1 == 9 && m2 == 9 && m3 == 9
      puts "Combination is #{m1} - #{m2} - #{m3}"
      deposit -= 90
      puts "You lost 90$. Your deposit is #{deposit}$."

        if deposit.negative?
          puts "Your deposit is negative - #{deposit}"

          sleep 0.3
        
          puts "Do you like to continue?(Y/N): "
          sub_agreement = gets.strip.capitalize

            if sub_agreement == "Y"
              puts "Add deposit ($): "
              deposit = gets.to_f
            else sub_agreement == "N"
              puts "Go to administrator and bring back your debt! See you later!"
              puts "Quiting in 10 sec."

                1.upto(10) do |x|
                  print "x" + "\r"
                  sleep 0.3 
                end
            abort
            end
        end

    elsif m1 == 1 && m2 == 2 && m3 == 3
      puts "Combination is #{m1} - #{m2} - #{m3}"
      deposit -= 123
      puts "You lost 123$. Your deposit is #{deposit}$."

        if deposit.negative?
          puts "Your deposit is negative - #{deposit}"

          sleep 0.3
        
          puts "Do you like to continue?(Y/N): "
          sub_agreement = gets.strip.capitalize

            if sub_agreement == "Y"
              puts "Add deposit ($): "
              deposit = gets.to_f
            else sub_agreement == "N"
              puts "Go to administrator and bring back your debt! See you later!"
              puts "Quiting in 10 sec."

                1.upto(10) do |x|
                  print "x" + "\r"
                  sleep 0.3 
                end
            abort
            end
        end

    elsif m1 == 3 && m2 == 2 && m3 == 1
      puts "Combination is #{m1} - #{m2} - #{m3}"
      deposit += 1000
      puts "You have won 1000$. Your deposit is #{deposit}$."

        if deposit.negative?
          puts "Your deposit is negative - #{deposit}"

          sleep 0.3
        
          puts "Do you like to continue?(Y/N): "
          sub_agreement = gets.strip.capitalize

            if sub_agreement == "Y"
              puts "Add deposit ($): "
              deposit = gets.to_f
            else sub_agreement == "N"
              puts "Go to administrator and bring back your debt! See you later!"
              puts "Quiting in 10 sec."

                1.upto(10) do |x|
                  print "x" + "\r"
                  sleep 0.3 
                end
            abort
            end
        end

    else
      puts "Combination is #{m1} - #{m2} - #{m3}"
      puts "You've lost 5$"
      deposit -= 5

        if deposit.negative?
          puts "Your deposit is negative - #{deposit}"

          sleep 0.3
        
          puts "Do you like to continue?(Y/N): "
          sub_agreement = gets.strip.capitalize

            if sub_agreement == "Y"
              puts "Add deposit ($): "
              deposit = gets.to_f
            else sub_agreement == "N"
              puts "Go to administrator and bring back your debt! See you later!"
              puts "Quiting in 10 sec."

                1.upto(10) do |x|
                  print "x" + "\r"
                  sleep 0.3 
                end
            abort
            end
        end  
    end
  end    
end

print "Counting"
10.times do 
  print "."
  sleep 0.2
end

puts
puts "=========================================="
puts "Dear, #{name}, your deposit is #{deposit}!"
puts "=========================================="
puts "To close the program press Enter"
gets
