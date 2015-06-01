class Squares
  def initialize(num)
    @num = num
  end

  def square_of_sums
    total = 0
    0.upto(@num) do |n|
      total += n
    end
    total * total
  end

  def sum_of_squares
    total = 0
    0.upto(@num) do |n|
      total += (n*n)
    end
    total
  end

  def difference
    square_of_sums - sum_of_squares
  end
end