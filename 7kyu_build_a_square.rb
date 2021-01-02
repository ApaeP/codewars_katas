# Codewars - Kata Solution (Ruby)
# BUILD A SQUARE (7 kyu)

# Instructions
# I will give you an integer. Give me back a shape that is as long and wide as the integer. The integer will be a whole number between 1 and 50.
# Example
# n = 3, so I expect a 3x3 square back just like below as a string:
# +++
# +++
# +++

# Solution
def generate_shape(n)
  ((("+" * n) + "\n") * n)[0..-2]
end


# Completed at : 2020-12-19T02:22:30.192Z
