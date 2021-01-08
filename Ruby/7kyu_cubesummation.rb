# Codewars - Kata Solution (Ruby)
# CUBESUMMATION (7 kyu)

# Instructions
# Write a function cubeSum(n, m) that will calculate a sum of cubes of numbers in a given range, starting from the smaller (but not including it) to the larger (including). The first argument is not necessarily the larger number.
# If both numbers are the same, then the range is empty and the result should be 0.
# Examples:
# cube_sum(2,3); # => 3^3 = 27
# cube_sum(3,2); # => 3^3 = 27
# cube_sum(0,4); # => 1^3+2^3+3^3+4^3 = 100
# cube_sum(17, 14); # => 15^3+16^3+17^3 = 12384
# cube_sum(9, 9); # => 0

# Solution
def cube_sum(*args)
  (args.min..args.max).to_a[1..-1].map { |e| e ** 3 }.sum
end


# Completed at : 2021-01-08 16:08:34 +0100
