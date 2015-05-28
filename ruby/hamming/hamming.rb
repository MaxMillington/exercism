class Hamming
  def self.compute(strand1, strand2
   if strand1.length != strand2.length
     raise (ArgumentError)
   else
     strand1.chars.zip(strand2.chars).count { |x, y| x != y }
   end

  end

end

