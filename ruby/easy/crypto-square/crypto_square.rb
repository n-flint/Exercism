require 'prime'

class Crypto

  def initialize(plaintext)
    @plaintext = plaintext
  end

  def ciphertext
    normalized = @plaintext.downcase.gsub(/[^a-z0-9\s]/i, '').delete(' ')
    ml = normalized.length

    factors = []
    # (0..ml).each do |n|
    (0..54).each do |n|
      if n == 0
        #nothing?
      else
        factors << n if ml % n == 0
        factors << n if 54 % n == 0
      end
    end
    require 'pry'; binding.pry
    

    # slice up normalized string into array of rows 
    mayb = []
    while normalized.length > 0 do
      s = normalized.slice!(0..2)
      mayb << s
    end
    # require 'pry'; binding.pry
  end
end

# The plaintext should be organized in to a rectangle. The size of the rectangle (r x c) should be decided by the length of the message, such that c >= r and c - r <= 1, where c is the number of columns and r is the number of rows.

# Our normalized text is 54 characters long, dictating a rectangle with c = 8 and r = 7:

# "ifmanwas"
# "meanttos"
# "tayonthe"
# "groundgo"
# "dwouldha" 
# "vegivenu"
# "sroots  "

# def divisors(n)
#   divisors = []    # Initialize an empty array where we store our divisors
#   for i in 1..n
#     divisors.push([i,n-i]) if n % i == 0    # Only pushes if i is a divisor of n
#   end
#   divisors      # returns our array
# end