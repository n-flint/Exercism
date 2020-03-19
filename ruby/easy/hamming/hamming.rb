class Hamming

  def self.compute(strand_1, strand_2)
    if strand_1 == '' || strand_2 == ''
      return 0
    elsif
      strand_1.length != strand_2.length
      raise ArgumentError
    else
      matched_strands(strand_1, strand_2)
    end
  end

  def self.matched_strands(strand_1, strand_2)
    s1 = []
    s2 = []
    strand_1.each_char do |c|
      s1 << c
    end
    strand_2.each_char do |c|
      s2 << c
    end
    counter = 0
    s1.each_with_index do |x, i|
      counter += 1 if x != s2[i]
    end
    counter
  end
end