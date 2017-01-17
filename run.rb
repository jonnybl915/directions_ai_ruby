require_relative 'drunkard'

puts 'Welcome to the Rover'

100000.times do
    d = Drunkard.new
    iterator = 0
    directions_string = "FFLLFLLFLLFLLTRRRRLFRFRFFFFFFFFLFFFFFFFFFLLLLLLFFFFFFLLLLLFFFFFFFLLLLLLRLRLRLRLRLFLRLFLRLFLFFFFLLLRFFFFF"
    shuffled_string = directions_string.chars.shuffle.join('')
    d.move_and_turn(shuffled_string)
    if (d.position_x == 2) && (d.position_y == 2)
      iterator += 1
    end

    puts "you have been through (0, 0) #{iterator} times"

end

  # puts "Your X position is #{d.position_x}"
  # puts "Your Y position is #{d.position_y}"
