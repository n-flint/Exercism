class CollatzConjecture

  def self.steps(input)
    raise ArgumentError if input == 0 || input < 0
    counter = 0
    loop do input > 1
      break if input == 1
      counter += 1
      if input.even?
        input = (input / 2)
      else input.odd?
        input = (input * 3 + 1)
      end
    end
    counter
  end
end