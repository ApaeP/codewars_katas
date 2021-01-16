# Codewars - Kata Solution (Ruby)
# COMPLETE FIBONACCI SERIES (6 kyu)

# Instructions
# The function 'fibonacci' should return an array of fibonacci numbers. The function takes a number as an argument to decide how many no. of elements to produce. If the argument is less than or equal to 0 then return empty array
# Example:
# fibonacci(4); # should return  [0,1,1,2]
# fibonacci(-1); # should return []

# Solution
def fibonacci(n, f=0, s=1, a = [])
  n.times { a << f ; f, s = s, f+s }; a
end


# Completed at : 2021-01-16 18:35:34 +0100
