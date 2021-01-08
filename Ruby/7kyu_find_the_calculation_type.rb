# Codewars - Kata Solution (Ruby)
# FIND THE CALCULATION TYPE (7 kyu)

# Instructions
# You have to create a function calcType, which receives 3 arguments: 2 numbers, and the result of an unknown operation performed on them (also a number).
# Based on those 3 values you have to return a string, that describes which operation was used to get the given result.
# The possible return strings are: "addition", "subtraction", "multiplication", "division".
# Example:
# calcT_type(1, 2, 3) -->   1 ? 2 = 3   --> "addition"
# Notes
# In case of division you should expect that the result of the operation is obtained by using / operator on the input values - no manual data type conversion or rounding should be performed.
# Cases with just one possible answers are generated.
# Only valid arguments will be passed to the function.
# Only valid arguments will be passed to the function!

# Solution
def calc_type(f, s, r)
  case r
    when f - s; 'subtraction'
    when f + s; 'addition'
    when f * s; 'multiplication'
    when f / s; 'division'
  end
end


# Completed at : 2021-01-08 15:08:30 +0100
