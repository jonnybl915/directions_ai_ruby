require 'rspec'
require_relative  'drunkard'

describe Drunkard do
  it 'can move forward one space' do
    d = Drunkard.new
    expect(d.position_x).to eq 0
    expect(d.position_y).to eq 0

    d.move_forward

    expect(d.position_x).to eq 0
    expect(d.position_y).to eq 1
  end

  it 'can move forward one space, change direction (right), and move forward one more space' do
    d = Drunkard.new

    d.move_forward
    expect(d.position_y).to eq 1

    d.turn_left_or_right('L')
    d.move_forward

    expect(d.position_x).to eq -1
  end

  it 'can move a number of spaces based on a direction string' do
    d = Drunkard.new

    d.move_and_turn('LLFFLF')

    expect(d.position_x).to eq 1
    expect(d.position_y).to eq -2

  end

end
