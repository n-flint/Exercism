class Matrix

  def initialize(string)
    matrix = []
    string.split("\n").each do |r|
      x = r.split.map do |d|
        d.to_i
      end
      matrix << x
    end
    @matrix = matrix
  end

  def rows
    @matrix
  end

  def columns
    @matrix.transpose
  end
end
