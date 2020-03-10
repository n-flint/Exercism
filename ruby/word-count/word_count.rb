class Phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    who = {}
    @phrase.split().each do |word|
      # this breaks as soon as it hits a comma. It counts the @phrase as one word. Maybe a helper method to make sure the phrase is set before entering?
      who[word] = @phrase.scan(/(?=#{word})/).count
    end
    who
  end
end