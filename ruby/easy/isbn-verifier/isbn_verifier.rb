class IsbnVerifier
# 
  def self.valid?(input_string)
    return false unless translate_input(input_string)
    isbn_array = translate_input(input_string)
    algorithm_check(isbn_array)
  end

  def self.algorithm_check(isbn)
    maybe = []
    counter = 10
    isbn.each_char do |c|
      if c == 'X'
        maybe << (10 * counter)
      else
        maybe << (c.to_i * counter)
        counter -= 1
      end
    end
    return true if (maybe.sum) % 11 == 0
  end

  def self.translate_input(input)
    stripped = input.gsub(/\-/, '')
    return false if stripped.length != 10
    stripped.chop.each_char do |c|
      return false if ('0'..'9').include?(c) == false
    end
    stripped
  end
end