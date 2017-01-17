require_relative 'drunkard'

puts 'Welcome to the Rover'

100000.times do
    d = Drunkard.new
    iterator = 0
    number_of_runs = 100000
    directions_string = "FFLLFLLFLLFLLTRRRRLFRFRFFFFFFFFLFFFFFFFFFLLLLLLFFFFFFLLLLLFFFFFFFLLLLLLRLRLRLRLRLFLRLFLRLFLFFFFLLLRFFFFF"
    shuffled_string = directions_string.chars.shuffle.join('')
    d.move_and_turn(shuffled_string)
    if (d.position_x == 0) && (d.position_y == 0)
      iterator += 1
    end
    x = number_of_runs / iterator
    puts x
end

  # puts "Your X position is #{d.position_x}"
  # puts "Your Y position is #{d.position_y}"
