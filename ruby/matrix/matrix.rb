class Matrix

  def initialize(string)
    @string = string
  end

  def rows
    matrix = []
    require 'pry'; binding.pry
    @string.chars.chunk do |yo|
      unless yo == '\n'
        matrix << yo
      require 'pry'; binding.pry
      end
      # @string.split(/\n/)

    end
  end
end
