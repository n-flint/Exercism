class Atbash

  @reg_alph = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  @rev_alph = ["z", "y", "x", "w", "v", "u", "t", "s", "r", "q", "p", "o", "n", "m", "l", "k", "j", "i", "h", "g", "f", "e", "d", "c", "b", "a"]

  def self.encode(input)
    encoded = []
    input.each_char do |c|
      encoded << c if ('0'..'9').include?(c)
      @reg_alph.each_with_index do |l, i|
        encoded << @rev_alph[i] if l == c.downcase
      end
    end
    split_five(encoded)
  end

  def self.decode(input)
    decoded = []
    input.each_char do |c|
      decoded << c if ('0'..'9').include?(c)
      @rev_alph.each_with_index do |l, i|
        decoded << @reg_alph[i] if l == c.downcase
      end
    end
    decoded.join
  end

  def self.split_five(input_array)
    es = []
    input_array.each_slice(5) do |slice|
      es << slice.join
    end
    es.join(' ')
  end
end