#robot

def robot_action
  arr = [:left, :right, :up, :down]
  move = rand(0..3)

  if move == 0
    cmd = arr[move]
  elsif move == 1
    cmd = arr[move]
  elsif move == 2
    cmd = arr[move]
  elsif move == 3
    cmd = arr[move]
  end

  return cmd

end

operation = robot_action

puts "We got command #{operation}"

if operation == :left
  puts "Robot moves left"
elsif operation == :right
  puts "Robot moves right"
elsif operation == :up
  puts "Robot jumps"
elsif operation == :down
  puts "Robot sit"
end