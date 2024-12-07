require_relative 'sequence_error'
require_relative 'rna'

module Rosalind
  class DnaSequence
    attr_reader :sequence

    ALPHABET = ['A', 'C', 'G', 'T'].freeze
  
    def initialize(sequence)
      pattern = /^[ACGT]*$/
      
      if !sequence.upcase.match? pattern
        raise SequenceError, "Invalid characters detected."
      end

      @sequence = sequence.upcase
    end

    def count_a
      @sequence.count('A')
    end

    def count_c
      @sequence.count('C')
    end

    def count_t
      @sequence.count('T')
    end

    def count_g
      @sequence.count('G')
    end

    def count_gc
      (count_g + count_c) / Float(@sequence.length)
    end

    def to_rna
      rna = @sequence.gsub('T', 'U')
      RnaSequence.new(rna)
    end

    def compliment
      compliment_map = {
        'A' => 'T',
        'T' => 'A',
        'C' => 'G',
        'G' => 'C'
      }

      compliment = ""
      
      @sequence.each_char do |nucleotide|
        compliment << compliment_map[nucleotide]        
      end

      DnaSequence.new(compliment.reverse)
    end
  end
end
