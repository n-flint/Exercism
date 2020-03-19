class SumOfMultiples

  def initialize(multiple_1 = 0, multiple_2 = 0, multiple_3 = 0, multiple_4 = 0, multiple_5 = 0)
    @multiple_1 = multiple_1
    @multiple_2 = multiple_2
    @multiple_3 = multiple_3
    @multiple_4 = multiple_4
    @multiple_5 = multiple_5
  end

  def to(limit)
    factors = []
    (1...limit).each do |i|
      return 0 if @multiple_1 == 0
      if @multiple_2 == 0
        factors << i if i % @multiple_1 == 0
      elsif @multiple_3 == 0
        factors << i if i % @multiple_1 == 0 || i % @multiple_2 == 0
      elsif @multiple_4 == 0
        factors << i if i % @multiple_1 == 0 || i % @multiple_2 == 0 || i % @multiple_3 == 0 
      else
        factors << i if i % @multiple_1 == 0 || i % @multiple_2 == 0 || i % @multiple_3 == 0 || i % @multiple_4 == 0 || i % @multiple_5 == 0
      end
    end
    factors.uniq.sum
  end
end