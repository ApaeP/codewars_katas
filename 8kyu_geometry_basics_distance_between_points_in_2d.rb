# Codewars - Kata Solution (Ruby)
# GEOMETRY BASICS DISTANCE BETWEEN POINTS IN 2D (8 kyu)

# Instructions
# This series of katas will introduce you to basics of doing geometry with computers.
# Point objects have x and y attributes (X and Y in C#) attributes.
# Write a function calculating distance between Point a and Point b.
# Tests round answers to 6 decimal places.

# Solution
def distance_between_points(a, b)
  Math.sqrt((b.x - a.x)**2 + (b.y - a.y)**2)
end


# Completed at : 2020-11-07T02:53:29.762Z
