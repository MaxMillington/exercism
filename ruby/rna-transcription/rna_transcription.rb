require 'pry'

class Complement

  @complements = {
      "A" => "U",
      "C" => "G",
      "G" => "C",
      "T" => "A"}

  @rna_complements == @complements.invert

  def self.of_dna(v)
    raise ArgumentError if v == "U"

    my_strand = []
    v = v.split("")
    v.each do |new_v|
      if new_v == "A"
        my_strand << "U"
      elsif new_v == "C"
        my_strand << "G"
      elsif new_v == "G"
        my_strand << "C"
      elsif new_v == "T"
        my_strand << "A"
      end
    end
    my_strand.join
  end

  def self.of_rna(v)
    raise ArgumentError if v == "T"

    my_strand = []
    v = v.split("")
    v.each do |new_v|
      if new_v == "U"
        my_strand << "A"
      elsif new_v == "G"
        my_strand << "C"
      elsif new_v == "C"
        my_strand << "G"
      elsif new_v == "A"
        my_strand << "T"
      end
    end
    my_strand.join
  end

end

