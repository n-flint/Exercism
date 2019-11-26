module ResistorColorDuo
  extend self

  def value(input)
    colors = %w(black
                brown
                red
                orange
                yellow
                green
                blue
                violet
                grey
                white)
    values = []
    input.first(2).each do |color|
      values << colors.index(color)
    end
    values.join.to_i
  end
end