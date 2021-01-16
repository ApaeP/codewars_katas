# Codewars - Kata Solution (Ruby)
# GEOMETRY BASICS DOT PRODUCT IN 3D (7 kyu)

# Instructions
# This series of katas will introduce you to basics of doing geometry with computers.
# Vector objects have x, y, and z attributes.
# Write a function calculating dot product of Vector a and Vector b.
# You can read more about dot product on Wikipedia.
# Tests round answers to 6 decimal places.

# Solution
def dot_product(a, b)
  a.x * b.x + a.y * b.y + a.z * b.z
end


# Completed at : 2021-01-16 16:43:11 +0100
