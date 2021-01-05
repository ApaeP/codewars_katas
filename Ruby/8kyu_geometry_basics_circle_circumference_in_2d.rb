# Codewars - Kata Solution (Ruby)
# GEOMETRY BASICS CIRCLE CIRCUMFERENCE IN 2D (8 kyu)

# Instructions
# This series of katas will introduce you to basics of doing geometry with computers.
# Point objects have x, y attributes. Circle objects have center which is a Point, and radius, which is a number.
# Write a function calculating circumference of a Circle.
# Tests round answers to 6 decimal places.

# Solution
def circle_circumference(circle)
  Math::PI * circle.radius * 2
end


# Completed at : 2020-11-03T04:04:53.687Z
