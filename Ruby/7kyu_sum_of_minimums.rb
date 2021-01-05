# Codewars - Kata Solution (Ruby)
# SUM OF MINIMUMS (7 kyu)

# Instructions
# Given a 2D list of size m * n. Your task is to find the sum of minimum value in each row.
# For Example:
# [
#   [1, 2, 3, 4, 5],       # minimum value of row is 1
#   [5, 6, 7, 8, 9],       # minimum value of row is 5
#   [20, 21, 34, 56, 100]  # minimum value of row is 20
# ]
# So, the function should return 26 because sum of minimums is as 1 + 5 + 20 = 26
# ENJOY CODING :)

# Solution
def sum_of_minimums(n)
  n.map { |e| e.min }.sum
end


# Completed at : 2020-12-24T14:12:08.123Z
