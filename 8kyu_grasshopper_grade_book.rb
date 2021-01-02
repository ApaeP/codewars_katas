# Codewars - Kata Solution (Ruby)
# GRASSHOPPER  GRADE BOOK (8 kyu)

# Instructions
# Grade book
# Complete the function so that it finds the mean of the three scores passed to it and returns the letter value associated with that grade.
# Numerical Score Letter Grade
# 90 <= score <= 100 'A'
# 80 <= score < 90 'B'
# 70 <= score < 80 'C'
# 60 <= score < 70 'D'
# 0 <= score < 60 'F'
# Tested values are all between 0 and 100. Theres is no need to check for negative values or values greater than 100.

# Solution
def get_grade(s1, s2, s3)
  x = (s1+s2+s3) / 3
  return 'A' if x >= 90
  return 'B' if x >= 80
  return 'C' if x >= 70
  return 'D' if x >= 60
  return 'F' if x < 60
end


# Completed at : 2020-10-30T00:32:36.336Z
