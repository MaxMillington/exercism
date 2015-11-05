class SumOfMultiples

  attr_reader :x, :y, :z

  def initialize(x, y, z = 1000000000000000000000000)
    @x = x
    @y = y
    @z = z
  end

  def self.to(number)
    self.new(3, 5).to(number)
  end

  def to(number)
    multiples(number).reduce(:+)
  end

  def multiples(number)
    chosen_numbers = []
    (0..number-1).each do |n|
      check_modulos(n, chosen_numbers)
    end
    chosen_numbers
  end

  def check_modulos(n, chosen_numbers)
    if n % x == 0
      chosen_numbers << n
    elsif n % y == 0
      chosen_numbers << n
    elsif n % z == 0
      chosen_numbers << n
    end
  end
end
