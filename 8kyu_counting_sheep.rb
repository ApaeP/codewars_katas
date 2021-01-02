# Codewars - Kata Solution (Ruby)
# COUNTING SHEEP (8 kyu)

# Instructions
# Consider an array/list of sheep where some sheep may be missing from their place. We need a function that counts the number of sheep present in the array (true means present).
# For example,
# [true,  true,  true,  false,
#   true,  true,  true,  true ,
#   true,  false, true,  false,
#   true,  false, false, true ,
#   true,  true,  true,  true ,
#   false, false, true,  true]
# The correct answer would be 17.
# Hint: Don't forget to check for bad values like null/undefined

# Solution
def countSheeps array
  array.count(true)
end


# Completed at : 2020-10-30T14:28:21.391Z
