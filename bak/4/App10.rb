print 'Enter the Matrix: '
s = gets.chomp

10.times do
  s.size.times do |x|
    print s[x]
    d = rand(0.5)
    sleep d
    print '-'
  end

  print ' '
end
