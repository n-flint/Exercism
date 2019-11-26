class Complement

  def self.of_dna(dna_input)
    chars = dna_input.split('')
    # require 'pry'; binding.pry
    complements = { 'G' => 'C',
                    'C' => 'G',
                    'T' => 'A',
                    'A' => 'U' }
    result = []
    chars.each do |letter|
      # require 'pry'; binding.pry
      if complements.has_key?(letter)
        result << complements[letter]
        result.join
      else
        dna_input
      end
    end
  end

end