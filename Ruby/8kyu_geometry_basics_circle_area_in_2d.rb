# Codewars - Kata Solution (Ruby)
# GEOMETRY BASICS CIRCLE AREA IN 2D (8 kyu)

# Instructions
# This series of katas will introduce you to basics of doing geometry with computers.
# Write the function circleArea/CircleArea which takes in a Circle object and calculates the area of that circle.
# The Circle class can be seen below:
# # Represents a Circle where center is a Point and radius is a Number
# class Circle
#   attr_accessor :center, :radius
#   def initialize(center, radius) 
#     @center = center 
#     @radius = radius
#   end
# end
# And the Point class can be seen below:
# # Represents a Point where x and y are Numbers
# class Point
#   attr_accessor :x, :y
#   def initialize(x, y)
#     @x = x
#     @y = y 
#   end
# end
# Tests round answers to 6 decimal places.

# Solution
def circle_area(circle)
  circle.radius ** 2 * Math::PI
end


# Completed at : 2020-11-03T19:00:04.211Z
