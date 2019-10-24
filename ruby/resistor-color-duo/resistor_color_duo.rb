class ResistorColorDuo

  def self.value(input)
    colors = ['black',
              'brown',
              'red',
              'orange',
              'yellow',
              'green',
              'blue',
              'violet',
              'grey',
              'white']
    values = []
    input.first(2).each do |color|
      values << colors.index(color)
    end
    values.join.to_i
  end
end