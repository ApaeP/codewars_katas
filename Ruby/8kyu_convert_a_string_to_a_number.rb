# Codewars - Kata Solution (Ruby)
# CONVERT A STRING TO A NUMBER (8 kyu)

# Instructions
# Note: This kata is inspired by Convert a Number to a String!. Try that one too.
# Description
# We need a function that can transform a string into a number. What ways of achieving this do you know?
# Note: Don't worry, all inputs will be strings, and every string is a perfectly valid representation of an integral number.
# Examples
# string_to_number "1234"  == 1234
# string_to_number "605"   == 605
# string_to_number "1405"  == 1405
# string_to_number "-7"    == -7

# Solution
def string_to_number(s)
  s.to_i
end


# Completed at : 2020-10-30T14:27:42.240Z
