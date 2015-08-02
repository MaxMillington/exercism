class Nucleotide
  def self.from_dna(strand)
    if strand.include?("J")
      raise ArgumentError
    else
      strand
    end
  end
end

class String
  def histogram
    a = count("A")
    t = count("T")
    c = count("C")
    g = count("G")
    return {"A"=>a, "T"=>t, "C"=>c, "G"=>g}
  end
end
