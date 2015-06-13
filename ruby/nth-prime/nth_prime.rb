class Prime

    def self.primer(size)

      primes = []
      number = 2
      count = 1
      while count < size
        j = 2
        while j <= number
          break if number%j == 0
          j += 1
        end
        if j == number
          primes << number
          count += 1
        end
        number += 1
      end
      primes
    end

  def self.nth(number)
    raise ArgumentError if number == 0
    primer(100)[number-1]
  end

end


prime = Prime.nth(2)

print prime