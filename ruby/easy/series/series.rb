class Series

  def initialize(input)
    @input_array = input.chars
  end

  def slices(count)
    if count <= @input_array.count
      slices_array = []
        @input_array.each_cons(count) do |series|
          slices_array << series.join
        end
        slices_array
    else
      raise ArgumentError
    end
  end
end