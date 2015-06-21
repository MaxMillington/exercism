class Series

  def initialize(number)
    @number = number
  end

  def slices(n)
    if n > @number.length
      raise ArgumentError
    else
      slices = @number.chars.each_cons(n).to_a
      slices.map do |x|
        x.map do |y|
          y.to_i
        end
      end
    end
  end
end