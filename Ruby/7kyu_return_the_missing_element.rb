# Codewars - Kata Solution (Ruby)
# RETURN THE MISSING ELEMENT (7 kyu)

# Instructions
# Fellow code warrior, we need your help! We seem to have lost one of our sequence elements, and we need your help to retrieve it!
# Our sequence given was supposed to contain all of the integers from 0 to 9 (in no particular order), but one of them seems to be missing.
# Write a function that accepts a sequence of unique integers between 0 and 9 (inclusive), and returns the missing element.
# Examples:
# [0, 5, 1, 3, 2, 9, 7, 6, 4] --> 8
# [9, 2, 4, 5, 7, 0, 8, 6, 1] --> 3

# Solution
def get_missing_element(seq)
  ((0..9).to_a - seq).first
end


# Completed at : 2020-12-30T18:44:44.356Z
