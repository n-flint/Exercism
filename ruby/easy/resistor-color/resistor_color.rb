

  include 'COLORS.rb'

class ResistorColor
  
  def self.color_code(color)
    return 0 if color == 'black'
    return 1 if color == 'brown'
    return 2 if color == 'red'
    return 3 if color == 'orange'
    return 4 if color == 'yellow'
    return 5 if color == 'green'
    return 6 if color == 'blue'
    return 7 if color == 'violet'
    return 8 if color == 'grey'
    return 9 if color == 'white'
  end
end