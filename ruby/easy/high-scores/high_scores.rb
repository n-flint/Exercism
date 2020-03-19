class HighScores

  attr_reader :scores,
              :personal_best,
              :latest,
              :personal_top_three

  def initialize(scores)
    @scores = scores
    @personal_best = scores.max
    @latest = scores.last
    @personal_top_three = scores.sort.reverse.first(3)
  end

  def latest_is_personal_best?
    unless scores.sort.reverse.max == scores.first
      return true
    end
  end
end
