# Codewars - Kata Solution (Ruby)
# DIGITIZE (7 kyu)

# Instructions
# Given a non-negative integer, return an array / a list of the individual digits in order.
# Examples:
# 123 => [1,2,3]

# 1 => [1]

# 8675309 => [8,6,7,5,3,0,9]

# Solution
def digitize(n)
  n.digits.reverse
end


# Completed at : 2021-04-12 23:28:59 +0200
