# Codewars - Kata Solution (Ruby)
# SQUARES SEQUENCE (7 kyu)

# Instructions
# Complete the function that returns an array of length n, starting with the given number x and the squares of the previous number. If n is negative or zero, return an empty array/list.
# Examples
# 2, 5  -->  [2, 4, 16, 256, 65536]
# 3, 3  -->  [3, 9, 81]

# Solution
def squares(x, n, arr = [])
  n.times { arr.empty? ? arr << x : arr << arr[-1] ** 2 }
  arr
end


# Completed at : 2020-12-31T02:41:18.984Z
