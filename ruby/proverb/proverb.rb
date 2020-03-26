class Proverb

  def initialize(*inputs)
    # require 'pry'; binding.pry
    @inputs = inputs

  end

  def get_proverb
    # verse = 
    # verse_length = "For want of a nail the shoe was lost.\n"
    # verse_length.insert(-1, 'And all for the want of a nail.')
    
    count = @inputs.length - 1
    maybe = []
    while count > 0 do
    @inputs.each_with_index do |w, i|
    # @inputs.length.(2)times do |i|
      require 'pry'; binding.pry
        maybe << "For want of a #{w} the #{@inputs[i + 1]} was lost.\n"
        count -= 1
        # require 'pry'; binding.pry
      end
    end
    maybe
  end
end
 
# For want of a nail the shoe was lost.
# For want of a shoe the horse was lost.
# For want of a horse the rider was lost.
# For want of a rider the message was lost.
# For want of a message the battle was lost.
# For want of a battle the kingdom was lost.
# And all for the want of a nail.

# Note that the list of inputs may vary; your solution should be able to handle lists of arbitrary length and content. No line of the output text should be a static, unchanging string; all should vary according to the input given.