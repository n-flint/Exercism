require 'prime'

class Raindrops

  def self.convert(int_input)
    factor_array = find_factors(int_input)
    output = find_text(factor_array)
    if output == ''
      return int_input.to_s
    else
      output
    end
  end

  def self.find_factors(int_input)
    factors = []
      (1..int_input).select do |int|
        factors << int if int_input % int == 0
      end
    factors
  end

  def self.find_text(factors_input)
    output = ''
    factors_input.each do |f|
        output.insert(-1, 'Pling') if f == 3
        output.insert(-1, 'Plang') if f == 5
        output.insert(-1, 'Plong') if f == 7
    end
    output
  end
end