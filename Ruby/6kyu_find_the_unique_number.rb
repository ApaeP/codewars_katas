# Codewars - Kata Solution (Ruby)
# FIND THE UNIQUE NUMBER (6 kyu)

# Instructions
# There is an array with some numbers. All numbers are equal except for one. Try to find it!
# find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
# find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
# It’s guaranteed that array contains at least 3 numbers.
# The tests contain some very huge arrays, so think about performance.
# This is the first kata in series:
# Find the unique number (this kata)
# Find the unique string
# Find The Unique

# Solution
def find_uniq(arr)
  arr.uniq.select { |x| arr.count(x) == 1 }.first
end 


# Completed at : 2021-01-16 19:32:19 +0100
