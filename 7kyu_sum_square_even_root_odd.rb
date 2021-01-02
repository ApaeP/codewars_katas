# Codewars - Kata Solution (Ruby)
# SUM  SQUARE EVEN ROOT ODD (7 kyu)

# Instructions
# Complete the function that takes a list of numbers (nums), as the only argument to the function. Take each number in the list and square it if it is even, or square root the number if it is odd. Take this new list and return the sum of it, rounded to two decimal places.
# The list will never be empty and will only contain values that are greater than or equal to zero.
# Good luck!

# Solution
def sum_square_even_root_odd(nums)
  nums.map { |x| x.even? ? x ** 2 : Math.sqrt(x) }.sum.round(2)
end


# Completed at : 2020-12-09T03:01:19.504Z
