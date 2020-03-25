class Affine

  def initialize(key_a, key_b)
    @key_a = key_a
    @key_b = key_b
  end

  def encode(plaintext)
    maybe = []
    plaintext.each_char do |c|
    require 'pry'; binding.pry

    end
# E(x) = (ax + b) mod m
# E(x) = (452) mod m

    # require 'pry'; binding.pry

  end

end

# E(x) = (ax + b) mod m
# Encoding test gives ybty with the key a=5 b=7

# where x is the letter's index from 0 - length of alphabet - 1
# m is the length of the alphabet. For the roman alphabet m == 26.
# and a and b make the key