class Phrase

  def initialize(phrase)
    @phrase = phrase.gsub(/[!@#$%^&*()+=",.?:;]/, ' ').downcase
  end

  def word_count
    who = {}
    @phrase.split().each do |word|
      who[word] = @phrase.scan(/\b#{word}\b/).count
    end
    who
  end
end