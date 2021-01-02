# Codewars - Kata Solution (Ruby)
# BEGINNER SERIES 3 SUM OF NUMBERS (7 kyu)

# Instructions
# Given two integers a and b, which can be positive or negative, find the sum of all the integers between including them too and return it. If the two numbers are equal return a or b.
# Note: a and b are not ordered!
# Examples
# get_sum(1, 0) == 1   # 1 + 0 = 1
# get_sum(1, 2) == 3   # 1 + 2 = 3
# get_sum(0, 1) == 1   # 0 + 1 = 1
# get_sum(1, 1) == 1   # 1 Since both are same
# get_sum(-1, 0) == -1 # -1 + 0 = -1
# get_sum(-1, 2) == 2  # -1 + 0 + 1 + 2 = 2

# Solution
def get_sum(*args)
  (args.min..args.max).sum
end
