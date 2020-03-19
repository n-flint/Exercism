class Cipher
  attr_reader :key

  def initialize(key = (0...100).map { ('a'..'z').to_a[rand(26)] }.join)
    @key = key unless validate_key(key)
  end

  def validate_key(key)
    case
      when key != key.downcase, key.match(/\d/), key == '' 
        raise ArgumentError
    end
  end

  def encode(plaintext)
    encoded_arr = []
    counter = 0
    plaintext.each_char do |c|
      off = (@key[counter].ord - 97).abs
      if c.ord + off > 122
        encoded_arr << ((c.ord + off) - 26).chr
      else 
        encoded_arr << (off + c.ord).chr
      end
      counter += 1
    end
    encoded_arr.join
  end

  def decode(ciphertext)
    decoded_arr = []
    counter = 0
    ciphertext.each_char do |c|
      off = (@key[counter].ord - 97).abs
      if c.ord + off > 122
        decoded_arr << (off + 97).chr
      else
        decoded_arr << (c.ord - off).chr
      end
      counter += 1
    end
    decoded_arr.join
  end
end