require('rspec')
require('triangle')

describe('Triangle#triangle') do
  it('confirms whether the input corresponds to an equilateral triangle') do
    expect(Triangle.new(3,3,3).triangle).to(eq("This is an equilateral triangle"))
  end

  it('confirms whether the input corresponds to an isosceles triangle, which means that two sides of the triangle are equal') do
    expect(Triangle.new(3,3,2).triangle).to(eq("This is an isosceles triangle"))
  end

  it('confirms whether the input corresponds to a scalene triangle, which means that all sides of the triangle are different') do
    expect(Triangle.new(3,4,2).triangle).to(eq("This is a scalene triangle"))
  end

  it('confirms whether the sides do not correspond to a triangle') do
    expect(Triangle.new(3,7,2).triangle).to(eq("This is not a triangle"))
  end
end
