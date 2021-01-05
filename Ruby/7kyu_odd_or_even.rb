# Codewars - Kata Solution (Ruby)
# ODD OR EVEN (7 kyu)

# Instructions
# Task:
# Given a list of numbers, determine whether the sum of its elements is odd or even.
# Give your answer as a string matching "odd" or "even".
# If the input array is empty consider it as: [0] (array with a zero).
# Example:
# odd_or_even([0])          ==  "even"
# odd_or_even([0, 1, 4])    ==  "odd"
# odd_or_even([0, -1, -5])  ==  "even"
# Have fun!

# Solution
def odd_or_even(array)
  array.sum.odd? ? 'odd' : 'even'
end


# Completed at : 2020-12-14T04:20:20.119Z
