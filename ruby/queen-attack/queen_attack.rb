class Queens

  def initialize(input_positions)
    validate_position(input_positions)
    @white = input_positions[:white]
    @black = input_positions[:black]
  end

  def validate_position(pos)
    case
    when pos[:white][0] < 0 || pos[:white][0] > 7,
         pos[:white][1] < 0 || pos[:white][1] > 7,
         pos[:black] && (pos[:black][0] < 0 || pos[:black][0] > 7),
         pos[:black] && (pos[:black][1] < 0 || pos[:black][1] > 7)
      raise ArgumentError
    end
  end

  def attack?
    case
    when @white[0] == @black[0],
         @white[1] == @black[1],
         (@white[0] - @black[0]).abs == (@white[1] - @black[1]).abs
      true
    end
  end
end