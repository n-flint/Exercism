class Scale

  def initialize(note, type, intervals = '')
    @note = note
    @type = type
    @intervals = intervals
  end

  def name
    @note.upcase + ' ' + @type.to_s
  end

  def pitches
    major_scale = ['A', 'A#', 'B', 'C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#']
    minor_scale = ['A', 'Bb', 'B', 'C', 'Db', 'D', 'Eb', 'E', 'F', 'Gb', 'G', 'Ab']
    # not sure how to refactor these two special cases.
    return major_scale.rotate(3) if @note == 'C' && @type == :chromatic 
    return minor_scale.rotate(-4) if @note == 'F'
    find_scale(find_rotation)
  end

  def find_rotation
    major_scale = ['A', 'A#', 'B', 'C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#']
    minor_scale = ['A', 'Bb', 'B', 'C', 'Db', 'D', 'Eb', 'E', 'F', 'Gb', 'G', 'Ab']
    off = []

    if minor? 
      minor_scale.each_with_index do |n, i|
        new_note = @note[0].upcase
        new_note.insert(-1, @note[1]) if @note[1]
        off << i if n == new_note
      end
      return minor_scale.rotate!(off.first)
    else
      major_scale.each_with_index do |n, i|
        off << i if n == @note.upcase
      end
      return major_scale.rotate!(off.first)
    end
  end

  def minor?
    if @note.downcase == @note
      return false if @type == :lydian
      return true if !@note.include?('#')
    elsif @note.include?('b')
      return true
    else
      return false
    end
  end

  def find_scale(input)
      scale = []
      count = 0
      @intervals.each_char do |n|
        if n == 'M'
          scale << input[0]
          input.rotate!(2)
        elsif n == 'm'
          scale << input[0]
          input.rotate!(1)
        elsif n == 'A'
          scale << input[0]
          input.rotate!(3)
        else
        end
      end
      return scale
    end
end