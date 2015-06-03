require 'pry'

class Fixnum

  NUMBERS = {1000 => "M",
             900 => "CM",
             500 => "D",
             400 => "CD",
             100 => "C",
             90 => "XC",
             50 => "L",
             40 => "XL",
             10 => "X",
             9 => "IX",
             5 => "V",
             4 => "IV",
             1 => "I",}


  def to_roman
    n = self
    stone_numbers = ""
    NUMBERS.each do |key, letter|
        stone_numbers << letter*(n/key)

      n = n.modulo(key)

    end
    return stone_numbers
  end

end