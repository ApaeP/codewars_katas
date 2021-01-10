# Codewars - Kata Solution (Ruby)
# ANAGRAM DETECTION (7 kyu)

# Instructions
# An anagram is the result of rearranging the letters of a word to produce a new word (see wikipedia).
# Note: anagrams are case insensitive
# Complete the function to return true if the two arguments given are anagrams of each other; return false otherwise.
# Examples
# "foefet" is an anagram of "toffee"
# "Buckethead" is an anagram of "DeathCubeK"

# Solution
def is_anagram(test, original)
  test.downcase.chars.sort == original.downcase.chars.sort
end


# Completed at : 2021-01-10 15:16:30 +0100
