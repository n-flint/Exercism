
class Acronym

  def self.abbreviate(input_string)
    input_string.split.map do |word|
      word[0].upcase.split('-')
    end.join
  end
end