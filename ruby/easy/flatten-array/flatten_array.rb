class FlattenArray
  # Maybe? do not use built in method flatten.
  def self.flatten(input_array)
    may = []
    input_array.each do |yo|

      # if yo.class == array
        # yo.flatten if yo.class == Array
        unless yo.class != Array
          yo = yo.flatten
        end
          may << yo

        # yo.flatten if yo.class == Array
        # may << yo

        # require 'pry'; binding.pry
    end
    may
  #   input_array.each_char do |c|
  #   require 'pry'; binding.pry
  #   end
  #   input_array.flatten # works until there is a null/nill value
  end


end