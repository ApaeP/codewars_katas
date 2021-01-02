# Codewars - Kata Solution (Ruby)
# REPEATIT (8 kyu)

# Instructions
# Create a function that takes a string and an integer (n).
# The function should return a string that repeats the input string n number of times.
# If anything other than a string is passed in you should return "Not a string"
# Example
# "Hi", 2 --> "HiHi"
# 1234, 5 --> "Not a string"

# Solution
def repeat_it(str,n)
  str.is_a?(String) ? str * n : "Not a string"
end


# Completed at : 2020-11-07T02:41:16.956Z
