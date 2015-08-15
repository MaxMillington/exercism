require 'pry'

class Luhn

  def initialize(number)
    @number = number
  end

  def addends
    set = @number.to_s.split(//)
    set.reverse.map.with_index do |value, index|
      if index.odd?
        if value.to_i * 2 > 9
          (value.to_i * 2) - 9
        else
          value.to_i * 2
        end
      else
        value.to_i
      end
    end.reverse
  end

  def checksum
    addends.reduce(:+)
  end

  def valid?
    return true if checksum.modulo(10) == 0
  end

  def self.create(num)
    luhner_landing = num * 10
    luhner = Luhn.new(luhner_landing)
    return luhner_landing if luhner.valid?
    luhner_landing + 10 - (luhner.checksum.modulo(10))

  end

end