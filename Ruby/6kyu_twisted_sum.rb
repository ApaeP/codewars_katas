# Codewars - Kata Solution (Ruby)
# TWISTED SUM (6 kyu)

# Instructions
# Find the sum of the digits of all the numbers from 1 to N (both ends included).
# Examples
# # N = 4
# 1 + 2 + 3 + 4 = 10

# # N = 10
# 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + (1 + 0) = 46

# # N = 12
# 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + (1 + 0) + (1 + 1) + (1 + 2) = 51

# Solution
def solution(n)
  (1..n).step.map(&:to_s).join.chars.map(&:to_i).sum
end


# Completed at : 2021-04-01 01:11:00 +0200
