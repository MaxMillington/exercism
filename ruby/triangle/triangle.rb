class Triangle

  def initialize(side1, side2, side3)
    @sides = []
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides << @side1
    @sides << @side2
    @sides << @side3
    @sides = @sides.group_by{|x| x}
  end

  def kind
    if @sides.keys.first == 0
      raise TriangleError
    elsif @sides.keys.any? {|x| x < 0}
      raise TriangleError
    elsif @side1 + @side2 <= @side3
      raise TriangleError
    elsif @side2 + @side3 <= @side1
      raise TriangleError
    elsif @side3 + @side1 <= @side2
      raise TriangleError
    else
      species_generator
    end
  end

  private

  def species_generator
    if @sides.size == 1
      return :equilateral
    elsif @sides.size == 2
      return :isosceles
    elsif @sides.size ==3
      return :scalene
    end
  end
end



class TriangleError < StandardError

end
