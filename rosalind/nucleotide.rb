module Rosalind
  module Nucleotide
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

    def count_u
      @sequence.count('U')
    end

    def count_gc
      (count_g + count_c) / Float(@sequence.length)
    end
  end
end