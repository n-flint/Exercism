class Scrabble

  def initialize(tile)
    @tile = tile
  end

  def score
    if valid_input?(@tile)
      find_score(@tile)
    else
      return 0
    end
  end

  def valid_input?(input)
    unless input == '' || input == nil || input.match(/\s/)
      true
    end
  end

  def find_score(tile)
    value_hash = {
      1 => ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
      2 => ['D', 'G'],
      3 => ['B', 'C', 'M', 'P'],
      4 => ['F', 'H', 'V', 'W', 'Y'],
      5 => ['K'],
      8 => ['J', 'X'],
      10 => ['Q', 'Z']
        }
    scores = []
    tile.each_char do |c|
      value_hash.values.each do |value|
        scores << value_hash.key(value) if value.include?(c.upcase)
      end
    end
    scores.sum
  end

  def self.score(input)
    new(input).score
  end
end