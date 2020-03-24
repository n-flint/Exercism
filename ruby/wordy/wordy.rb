class WordProblem

  def initialize(question)
    @question = question
  end

  def answer
    new_ary = @question.gsub(/\-\W+/, ' ').split(' ')
    new_ary.delete('is')
    new_ary.delete('What')
    new_ary.delete('by')
    math_time(new_ary)
  end

  def math_time(math_ary)
    eq = []
    math_ary.each_with_index do |p, i|
      if (1..999999).include?(p.to_i)
      else
      eq << (math_ary[i-1].to_i + math_ary[i+1].to_i) if p == 'plus'
      eq << (math_ary[i-1].to_i - math_ary[i+1].to_i) if p == 'minus'
      eq << (math_ary[i-1].to_i * math_ary[i+1].to_i) if p == 'multiplied'
      eq << (math_ary[i-1].to_i / math_ary[i+1].to_i) if p == 'divided'
        # ----- Does not work for multiple equations -----
        # if math_ary.length != 3
        #   math_ary.slice!((i-1)..(i+1))
        #   math_ary.insert(0, eq.first.to_s)
        # else
        # end
      end
    end
    eq.first
  end
end