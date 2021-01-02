# Codewars - Kata Solution (Ruby)
# EXCLAMATION MARKS SERIES 11 REPLACE ALL VOWEL TO EXCLAMATION MARK IN THE SENTENCE (8 kyu)

# Instructions
# Description:
# Replace all vowel to exclamation mark in the sentence. aeiouAEIOU is vowel.
# Examples
# replace("Hi!") === "H!!"
# replace("!Hi! Hi!") === "!H!! H!!"
# replace("aeiou") === "!!!!!"
# replace("ABCDE") === "!BCD!"

# Solution
def replace(s)
  s.tr('aeiouAEIOU', '!')
end


# Completed at : 2020-11-03T03:51:20.569Z
