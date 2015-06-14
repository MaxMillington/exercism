class Binary

  def initialize(number_string)
    @number = number_string
  end

  def to_decimal
    numerals = @number.chars
    power = 0
    total = 0

    if numerals.none? do |input|
      input.to_i > 1
    end
      numerals.reverse.map do |input|
        calculated_number = input.to_i * 2**power
        total += calculated_number
        power += 1
      end
    else
      total = 0
    end
    total
  end
end


