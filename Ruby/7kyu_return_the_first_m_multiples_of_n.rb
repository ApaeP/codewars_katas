# Codewars - Kata Solution (Ruby)
# RETURN THE FIRST M MULTIPLES OF N (7 kyu)

# Instructions
# Implement a function, multiples(m, n), which returns an array of the first m multiples of the real number n. Assume that m is a positive integer.
# Ex.
# multiples(3, 5.0)
# should return
# [5.0, 10.0, 15.0]

# Solution
def multiples(m, n)
  (1..m).map { |x| x * n }
end


# Completed at : 2021-01-16 16:24:07 +0100
