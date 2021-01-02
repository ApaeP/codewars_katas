# Codewars - Kata Solution (Ruby)
# RETURN NEGATIVE (8 kyu)

# Instructions
# In this simple assignment you are given a number and have to make it negative. But maybe the number is already negative?
# Example:
# makeNegative(1); # return -1
# makeNegative(-5); # return -5
# makeNegative(0); # return 0
# Notes:
# The number can be negative already, in which case no change is required.
# Zero (0) is not checked for any specific sign. Negative zeros make no mathematical sense.

# Solution
def makeNegative(num)
 num.positive? ? -num : num
end


# Completed at : 2020-10-30T01:06:34.432Z
