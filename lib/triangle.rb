class Triangle
  define_method(:initialize) do |side0, side1, side2|
    @side0 = side0
    @side1 = side1
    @side2 = side2
  end

  define_method(:triangle) do
    sides = [@side0, @side1, @side2].sort!
    if (sides[2] < (sides[0]+sides[1]))
      if (sides[2] == sides[0]).&(sides[0] == sides[1])
        return "This is an equilateral triangle"
      elsif (sides[2] == sides[1]).|(sides[0] == sides[1])
        return "This is an isosceles triangle"
      else
        return "This is a scalene triangle"
      end
    end
    return "This is not a triangle"
  end

end
