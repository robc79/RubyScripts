require_relative 'sequence_error'

module Rosalind
  class DnaSequence
    attr_reader :sequence
    
    ALPHABET = ['A', 'C', 'G', 'T']
  
    def initialize(sequence)
      pattern = /^[ACGT]*$/
      
      if !sequence.upcase.match? pattern
        raise SequenceError, "Invalid characters detected."
      end

      @sequence = sequence.upcase
    end
  end
end
