class SumOfMultiples

  attr_reader :x, :y

  def self.to(number)
    new(3, 5).to(number)
  end

  def initialize(x, y, z = 1000000000000000000000000000000000000000)
    @x = x
    @y = y
    @z = z
  end

  def to(number)
    multiples(number).reduce(:+)
  end

  def multiples(number)
    special_numbers = []
    0.upto(number) do |n|
      if n.modulo(@x) == 0 && n != number
        special_numbers << n
      elsif n.modulo(@y) == 0 && n != number
        special_numbers << n
      elsif n.modulo(@z) == 0 && n != number
        special_numbers << n
      end
    end
    special_numbers
  end
end
