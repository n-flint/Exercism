class Robot
  attr_reader :name

  def self.forget
    # Magic to delete all the robots names? Needed for the test
  end

  def initialize
    @name = random_name
  end

  def current_robots
    []
  end

  def random_name
    name = []
    name << ('A'..'Z').to_a.sample(2).flatten
    name << (1..9).to_a.sample(3).map {|d| d.to_s}
    if current_robots.include?(name.join)
      random_name
    else
      current_robots << name.join
    end
    name.join
  end

  def reset
    current_robots.delete(@name)
    @name = random_name
  end
end