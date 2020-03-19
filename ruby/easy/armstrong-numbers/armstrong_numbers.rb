class ArmstrongNumbers

  def self.include?(input)
    x = []
    input.to_s.each_char do |d|
      x << d.to_i ** input.to_s.length
    end
    true if x.sum == input
  end
end