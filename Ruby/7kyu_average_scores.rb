# Codewars - Kata Solution (Ruby)
# AVERAGE SCORES (7 kyu)

# Instructions
# Create a function that returns the average of an array of numbers ("scores"), rounded to the nearest whole number. You are not allowed to use any loops (including for, for/in, while, and do/while loops).

# Solution
def average(array)
  (array.sum.to_f / array.count).round
end


# Completed at : 2021-04-25 21:19:46 +0200
