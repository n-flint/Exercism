class Scale

  def initialize(note, type, intervals = '')
    @note = note[0].upcase
    @note.insert(-1, note[1]) if note[1] #adds the second char if there is one. 
    @type = type
    @intervals = intervals
  end

  def name
    @note.upcase + ' ' + @type.to_s
  end

  def pitches
    chrom12 = ['A', 'A#', 'B', 'C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#']
    chrom12b = ['A', 'Bb', 'B', 'C', 'Db', 'D', 'Eb', 'E', 'F', 'Gb', 'G', 'Ab']
    if intervals = ''
      if @note == 'C' && @type == :chromatic
        return chrom12.rotate(3)
      elsif @note == 'F'
        return chrom12b.rotate(-4)
      else
        find_scale(find_rotation)
      end
    else
      return find_scale(find_rotation)
      # return find_scale(chrom12b.rotate(-2)) if @note == 'G' && @type == :locrian
      # return find_scale(chrom12b.rotate(5)) if @note == 'D' && @type == :harmonic_minor
    end
  end

  def find_rotation
    chrom12 = ['A', 'A#', 'B', 'C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#']
    chrom12b = ['A', 'Bb', 'B', 'C', 'Db', 'D', 'Eb', 'E', 'F', 'Gb', 'G', 'Ab']

    off = []
    # This conditional should be checking if the note is capitalized or not. I automatically upcase the input before storing it as @note. I think a helper method that upcase and determine if its a minor or major?
    if @note.include?('b')
      chrom12b.each_with_index do |n, i|
        off << i unless n != @note
      end
      return chrom12b.rotate!(off.first)
    else
      chrom12.each_with_index do |n, i|
        off << i unless n != @note
      end
      return chrom12.rotate!(off.first)
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