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
  def validate_size_has_to_greater_than_zero(size)
    if(size <= 0)
      raise TriangleError.new
    end
  end


  validate_size_has_to_greater_than_zero a
  validate_size_has_to_greater_than_zero b
  validate_size_has_to_greater_than_zero c

  biggest = [a,b,c].max

  if (a + b + c - biggest) <= biggest
    raise TriangleError.new
  end



  if ( a == b && b == c)
    :equilateral
  elsif (a == b || a == c || b == c)
    :isosceles
  else
    :scalene
  end

  # WRITE THIS CODE
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
