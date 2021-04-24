# Codewars - Kata Solution (Ruby)
# SMALL ENOUGH  BEGINNER (7 kyu)

# Instructions
# You will be given an array and a limit value. You must check that all values in the array are below or equal to the limit value. If they are, return true. Else, return false.
# You can assume all values in the array are numbers.

# Solution
def small_enough(a, limit)
  a.all? { |e| e <= limit }
end


# Completed at : 2021-04-24 02:16:16 +0200
