require_relative 'sequence_error'

module Rosalind
  class RnaSequence
    attr_reader :sequence

    ALPHABET = ['A', 'C', 'G', 'U'].freeze
  
    def initialize(sequence)
      pattern = /^[ACGU]*$/
      
      if !sequence.upcase.match? pattern
        raise SequenceError, "Invalid characters detected."
      end

      @sequence = sequence.upcase
    end
  end
end
