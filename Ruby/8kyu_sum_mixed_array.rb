# Codewars - Kata Solution (Ruby)
# SUM MIXED ARRAY (8 kyu)

# Instructions
# Given an array of integers as strings and numbers, return the sum of the array values as if all were numbers.
# Return your answer as a number.

# Solution
def sum_mix(x)
  x.sum { |i| i.to_i }
end


# Completed at : 2020-10-30T01:13:39.973Z
