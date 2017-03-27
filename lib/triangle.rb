class Array
  define_method(:triangle) do
    sides = sort
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
