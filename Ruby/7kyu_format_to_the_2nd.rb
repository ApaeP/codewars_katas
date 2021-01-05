# Codewars - Kata Solution (Ruby)
# FORMAT TO THE 2ND (7 kyu)

# Instructions
# Given some positive integers, I wish to print the integers such that all take up the same width by adding a minimum number of leading zeroes. No leading zeroes shall be added to the largest integer.
# For example, given 1, 23, 2, 17, 102, I wish to print out these numbers as follows:
# 001
# 023
# 002
# 017
# 102
# Write a function that takes a variable number of integers and returns the string to be printed out.

# Solution
def print_nums(*n)
  n.map { |e| "#{"0" * (n.max.digits.size - e.digits.size)}#{e}" }.join("\n")
end


# Completed at : 2020-12-30T20:39:30.725Z
