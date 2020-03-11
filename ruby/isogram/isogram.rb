class Isogram

  def self.isogram?(input)
    test = []
    input.sub('-', '').sub(' ', '').each_char do |c|
      test << c.upcase
    end
    if test.length == test.uniq.length
      p "Expected true, '#{input}' is an isogram"
    else
      p "Expected false, '#{input}' is not an isogram"
      false
    end
  end
end