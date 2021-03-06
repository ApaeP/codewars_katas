# Codewars - Kata Solution (Ruby)
# AREA OR PERIMETER (8 kyu)

# Instructions
# You are given the length and width of a 4-sided polygon. The polygon can either be a rectangle or a square.
# If it is a square, return its area. If it is a rectangle, return its perimeter.
# area_or_perimeter(6, 10) --> 32
# area_or_perimeter(4, 4) --> 16
# Note: for the purposes of this kata you will assume that it is a square if its length and width are equal, otherwise it is a rectangle.

# Solution
def area_or_perimeter(l, w)
  l == w ? l**2 : (l+w)*2
end


# Completed at : 2020-10-29T00:29:15.347Z
