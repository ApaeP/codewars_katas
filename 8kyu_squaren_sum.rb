# Codewars - Kata Solution (Ruby)
# SQUAREN SUM (8 kyu)

# Instructions
# Complete the square sum function so that it squares each number passed into it and then sums the results together.
# For example, for [1, 2, 2] it should return 9 because 1^2 + 2^2 + 2^2 = 9.

# Solution
def square_sum(num)
  num.map { |x| x**2 }.sum
end


# Completed at : 2020-10-29T23:23:33.300Z
