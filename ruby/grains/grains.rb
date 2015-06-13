class Grains

  def self.square(number)
    2 ** (number -1)
  end

  def self.total
    (1..64).reduce do |sum, number|
      sum + square(number)
    end
  end


end