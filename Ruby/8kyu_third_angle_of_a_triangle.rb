# Codewars - Kata Solution (Ruby)
# THIRD ANGLE OF A TRIANGLE (8 kyu)

# Instructions
# You are given two interior angles (in degrees) of a triangle.
# Write a function to return the 3rd.
# Note: only positive integers will be tested.
# https://en.wikipedia.org/wiki/Triangle

# Solution
def other_angle(a, b)
  180 - (a+b)
end


# Completed at : 2020-10-30T14:26:58.797Z
