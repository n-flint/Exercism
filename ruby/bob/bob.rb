class Bob

  def self.hey(input)
    response = ''
    if input[-1] == '?' && input.upcase == input && input != input.downcase
      response.insert(-1, "Calm down, I know what I'm doing!")
    elsif input.rstrip[-1] == '?'
      response.insert(-1, "Sure.")
    elsif input == input.upcase && input != input.downcase
      response.insert(-1, "Whoa, chill out!")
    elsif input.empty? || input.strip.empty?
      response.insert(-1, "Fine. Be that way!")
    else
      response.insert(-1, "Whatever.")
    end
    response
  end
end