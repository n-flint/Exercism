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
    #helper method for rotation based on @note? I feel like I am hard coding way to much here. 
    
    return chrom12.rotate(3) if @note == 'C' && @type == :chromatic
    return chrom12b.rotate(-4) if @note == 'F'
    return find_scale(chrom12.rotate(3)) if @note == 'C' && @type == :major
    return find_scale(chrom12.rotate(-2)) if @note == 'G' && @type == :major
    return find_scale(chrom12.rotate(-3)) if @note == 'F#' && @type == :minor
    return find_scale(chrom12b.rotate()) if @note == 'Bb' && @type == :minor
    return find_scale(chrom12.rotate(5)) if @note == 'D' && @type == :dorian
    return find_scale(chrom12b.rotate(6)) if @note == 'Eb' && @type == :mixolydian
    return find_scale(chrom12) if @note == 'A' && @type == :lydian
    return find_scale(chrom12.rotate(-5)) if @note == 'E' && @type == :phrygian
    return find_scale(chrom12b.rotate(-2)) if @note == 'G' && @type == :locrian
    return find_scale(chrom12b.rotate(5)) if @note == 'D' && @type == :harmonic_minor
    return find_scale(chrom12.rotate(3)) if @note == 'C' && @type == :octatonic
    return find_scale(chrom12b.rotate(4)) if @note == 'Db' && @type == :hexatonic
    return find_scale(chrom12) if @note == 'A' && @type == :pentatonic
    return find_scale(chrom12.rotate(-2)) if @note == 'G' && @type == :enigma
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