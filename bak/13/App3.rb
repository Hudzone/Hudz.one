def show_book book
  book.each_key do |name|
    age = book[name]
    puts "============================="
    puts "#{name}, #{age}"
    puts "============================="
  end
end

good_guys = { 
  'Pushkin' => 40, 
  'Stalin' => 55
}
puts "Good Guys Are: "
show_book good_guys

bad_guys = { 
  'Hitler' => 50,
  'Obama' => 40
}

puts 'Bad Guys Are: '
show_book bad_guys