require_relative 'drunkard'

puts 'Welcome to the Rover'

loop do
  d = Drunkard.new
  puts 'Please enter directions in any combination of "L", "R", or "F" '
  print '>'

  directions = gets.chomp
  d.move_and_turn(directions)

  puts "Your X position is #{d.position_x}"
  puts "Your Y position is #{d.position_y}"

end