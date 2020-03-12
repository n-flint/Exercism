class Triangle

  def initialize(sides)
    @sides = sides.sort
  end

  def equilateral?
    if @sides.uniq == [0]
      nil
    elsif @sides.uniq.count == 1
      true
    else
      false
    end
  end

  def isosceles?
    if @sides.uniq == 0 || @sides.count(1) > 1
      nil
    elsif @sides.uniq.count == 2 || @sides.uniq.count == 1
      true
    else
      false
    end
  end

  def scalene?
    if (@sides[0] + @sides[1]) >= @sides[2]
      return true if @sides.length == @sides.uniq.length
    else
      false
    end
  end
end