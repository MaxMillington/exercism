class PrimeFactors
  def self.for(number)
    divisor = 2
    factors  = []

    if number == 1
      []
    else
      until divisor > number
        if number.modulo(divisor) == 0
          factors << divisor
          number = number / divisor
        else
          divisor += 1
        end
      end
      factors
    end
  end
end