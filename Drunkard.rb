class Drunkard

  attr_reader :position_x, :position_y

  def initialize
    @position_x = 0
    @position_y = 0
    @current_direction = 'north'
  end
  def move_and_turn(directions_string)
    x = directions_string.upcase
    @directions_array = x.chars #[R, F, L, L, F]

    @directions_array.each do |letter|
          if letter == 'F'
            move_forward
          else
            turn_left_or_right(letter)
          end
        end
  end
  
  def move_forward
    if @current_direction == 'north'
      @position_y += 1
    end
    if @current_direction == 'south'
      @position_y -= 1
    end
    if @current_direction == 'east'
      @position_x += 1
    end
    if @current_direction == 'west'
      @position_x -= 1
    end
  end

  def turn_left_or_right(direction_of_turn)

    if (@current_direction == 'north') && (direction_of_turn == 'R')
      @current_direction = 'east'
    elsif (@current_direction == 'north') && (direction_of_turn == 'L')
      @current_direction = 'west'
    elsif @current_direction == 'east' && direction_of_turn == 'R'
      @current_direction = 'south'
    elsif @current_direction == 'east' && direction_of_turn == 'L'
      @current_direction = 'north'
    elsif @current_direction == 'south' && direction_of_turn == 'R'
      @current_direction = 'west'
    elsif @current_direction == 'south' && direction_of_turn == 'L'
      @current_direction = 'east'
    elsif @current_direction == 'west' && direction_of_turn == 'R'
      @current_direction = 'north'
    elsif @current_direction == 'west' && direction_of_turn == 'L'
      @current_direction = 'south'
    end
  end
end