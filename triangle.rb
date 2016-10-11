# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  if [a,b,c].min <= 0
      raise TriangleError, "triangle side length must be a positive value"
  end

  [a,b,c].permutation do |sides|
    if sides[0] + sides[1] <= sides[2]
      raise TriangleError, "One side of the triangle more than the sum of the other two sides"
    end
  end

  if a == b && a == c 
    :equilateral
  elsif a == b || b == c || a == c
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
