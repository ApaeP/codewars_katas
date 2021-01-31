# Codewars - Kata Solution (Ruby)
# AVERAGES OF NUMBERS (7 kyu)

# Instructions
# #Get the averages of these numbers
# Write a method, that gets an array of integer-numbers and return an array of the averages of each integer-number and his follower, if there is one.
# Example:
# Input:  [ 1, 3, 5, 1, -10]
# Output:  [ 2, 4, 3, -4.5]
# If the array has 0 or 1 values or is null, your method should return an empty array.
# Have fun coding it and please don't forget to vote and rank this kata! :-)

# Solution
def averages(arr, v = [])
  arr.each_cons(2) { |x, y| v << (x+y)/2.0 } unless arr.nil?; v
end


# Completed at : 2021-01-31 03:06:57 +0100
