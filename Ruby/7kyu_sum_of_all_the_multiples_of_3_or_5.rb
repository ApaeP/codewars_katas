# Codewars - Kata Solution (Ruby)
# SUM OF ALL THE MULTIPLES OF 3 OR 5 (7 kyu)

# Instructions
# Your task is to write function findSum.
# Upto and including n, this function will return the sum of all multiples of 3 and 5.
# For example:
# findSum(5) should return 8 (3 + 5)
# findSum(10) should return 33 (3 + 5 + 6 + 9 + 10)

# Solution
def find(n)
  0.upto(n).select { |x| x % 3 == 0 || x % 5 == 0 }.sum
end


# Completed at : 2021-01-10 15:39:23 +0100
