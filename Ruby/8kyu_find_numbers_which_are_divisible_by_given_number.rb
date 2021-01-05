# Codewars - Kata Solution (Ruby)
# FIND NUMBERS WHICH ARE DIVISIBLE BY GIVEN NUMBER (8 kyu)

# Instructions
# Complete the function which takes two arguments and returns all numbers which are divisible by the given divisor. First argument is an array of numbers and the second is the divisor.
# Example
# divisible_by([1, 2, 3, 4, 5, 6], 2) == [2, 4, 6]

# Solution
def divisible_by(numbers, divisor)
  numbers.select { |i| i % divisor == 0 }
end


# Completed at : 2020-10-30T01:32:07.988Z
