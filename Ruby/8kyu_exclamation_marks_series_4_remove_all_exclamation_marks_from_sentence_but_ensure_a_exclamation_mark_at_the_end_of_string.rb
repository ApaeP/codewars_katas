# Codewars - Kata Solution (Ruby)
# EXCLAMATION MARKS SERIES 4 REMOVE ALL EXCLAMATION MARKS FROM SENTENCE BUT ENSURE A EXCLAMATION MARK AT THE END OF STRING (8 kyu)

# Instructions
# Description:
# Remove all exclamation marks from sentence but ensure a exclamation mark at the end of string. For a beginner kata, you can assume that the input data is always a non empty string, no need to verify it.
# Examples
# remove("Hi!") === "Hi!"
# remove("Hi!!!") === "Hi!"
# remove("!Hi") === "Hi!"
# remove("!Hi!") === "Hi!"
# remove("Hi! Hi!") === "Hi Hi!"
# remove("Hi") === "Hi!"

# Solution
def remove(s)
  s.tr('!', '') << '!'
end


# Completed at : 2020-11-07T01:23:40.258Z
