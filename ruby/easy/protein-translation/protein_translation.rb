class Translation

  def self.of_codon(input)
    if check_codon(input) == nil
      raise InvalidCodonError
    else
    da_hash = {
      'Methionine' =>	['AUG'],
      'Phenylalanine': ['UUU', 'UUC'],
      'Leucine': ['UUA', 'UUG'],
      'Serine': ['UCU', 'UCC', 'UCA', 'UCG'],
      'Tyrosine': ['UAU', 'UAC'],
      'Cysteine': ['UGU', 'UGC'],
      'Tryptophan': ['UGG'],
      'STOP': ['UAA', 'UAG', 'UGA']
    }
    ops = []
    da_hash.keys.each do |k|
      ops << k if da_hash[k].include?(input)
    end
    ops.join
  end
  end

  def self.of_rna(input)
    proteins = []
    tres = input.scan /.{1,3}/ #returns array of sets of 3
    tres.each do |tre|
      if of_codon(tre) != 'STOP'
        proteins << of_codon(tre)
      else
        break
      end
    end
    proteins
  end

  def self.check_codon(input)
    if input.include?('U')
      input
    else
      raise InvalidCodonError
    end
  end
end
