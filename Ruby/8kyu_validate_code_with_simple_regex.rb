# Codewars - Kata Solution (Ruby)
# VALIDATE CODE WITH SIMPLE REGEX (8 kyu)

# Instructions
# Basic regex tasks. Write a function that takes in a numeric code of any length. The function should check if the code begins with 1, 2, or 3 and return true if so. Return false otherwise.
# You can assume the input will always be a number.

# Solution
def validate_code(code)
  code.digits[-1] < 4
end


# Completed at : 2020-11-21T15:41:23.817Z
