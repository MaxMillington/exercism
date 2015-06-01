
require 'prime'

class Raindrops
  def self.convert(num)
    # num.to_s
    if num.modulo(3) == 0 && num.modulo(5) == 0 && num.modulo(7) == 0
      "PlingPlangPlong"
    elsif num.modulo(3) == 0 && num.modulo(5) == 0
      "PlingPlang"
    elsif num.modulo(3) == 0 && num.modulo(7) == 0
      "PlingPlong"
    elsif num.modulo(5) == 0 && num.modulo(7) == 0
      "PlangPlong"
    elsif num.modulo(3) == 0
      "Pling"
    elsif num.modulo(5) == 0
      "Plang"
    elsif num.modulo(7) == 0
      "Plong"
    else
      num.to_s
    end

  end

end