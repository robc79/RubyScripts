require_relative 'sequence_error'
require_relative 'nucleotide'

module Rosalind
  class RnaSequence < GeneticSequence
    include Nucleotide

    def initialize(sequence)
      super(sequence, "ACGU")
    end
  end
end
