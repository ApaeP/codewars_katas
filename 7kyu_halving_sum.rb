# Codewars - Kata Solution (Ruby)
# HALVING SUM (7 kyu)

# Instructions
# Task
# Given a positive integer n, calculate the following sum:
# n + n/2 + n/4 + n/8 + ...
# All elements of the sum are the results of integer division.
# Example
# 25  =>  25 + 12 + 6 + 3 + 1 = 47

# Solution
def halving_sum(n, x = 2)
  a = n
  while (a / x) >= 1
    n += (a / x)
    x *= 2
  end
  n
end


# Completed at : 2020-12-18T05:06:05.929Z
