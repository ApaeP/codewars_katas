# Codewars - Kata Solution (Ruby)
# SUPER DUPER EASY (8 kyu)

# Instructions
# Make a function that returns the value multiplied by 50 and increased by 6. If the value entered is a string it should return "Error".
# Note: in C#, you'll always get the input as a string, so the above applies if the string isn't representing a double value.

# Solution
def problem x
  x.is_a?(String) ? 'Error' : x*50+6
end


# Completed at : 2020-11-03T03:27:29.378Z
