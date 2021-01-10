# Codewars - Kata Solution (Ruby)
# LARGEST 5 DIGIT NUMBER IN A SERIES (7 kyu)

# Instructions
# In the following 6 digit number:
# 283910
# 91 is the greatest sequence of 2 consecutive digits.
# In the following 10 digit number:
# 1234567890
# 67890 is the greatest sequence of 5 consecutive digits.
# Complete the solution so that it returns the greatest sequence of five consecutive digits found within the number given. The number will be passed in as a string of only digits. It should return a five digit integer. The number passed may be as large as 1000 digits.
# Adapted from ProjectEuler.net

# Solution
def solution(d)
  d.chars.map(&:to_i).each_cons(5).map { |e| e.join.to_i }.max
end


# Completed at : 2021-01-10 15:04:38 +0100
