# Codewars - Kata Solution (Ruby)
# EXCLAMATION MARKS SERIES 1 REMOVE A EXCLAMATION MARK FROM THE END OF STRING (8 kyu)

# Instructions
# Description:
# Remove a exclamation mark from the end of string. For a beginner kata, you can assume that the input data is always a string, no need to verify it.
# Examples
# remove("Hi!") === "Hi"
# remove("Hi!!!") === "Hi!!"
# remove("!Hi") === "!Hi"
# remove("!Hi!") === "!Hi"
# remove("Hi! Hi!") === "Hi! Hi"
# remove("Hi") === "Hi"
# Note
# Please don't post issue about difficulty or duplicate.

# Solution
def remove(s)
  s[-1] == '!' ? s[0..-2] : s
end


# Completed at : 2020-11-07T01:28:43.704Z
