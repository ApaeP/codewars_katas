# Codewars - Kata Solution (Ruby)
# SPOONERIZE ME (7 kyu)

# Instructions
# A spoonerism is a spoken phrase in which the first letters of two of the words are swapped around, often with amusing results.
# In its most basic form a spoonerism is a two word phrase in which only the first letters of each word are swapped:
# "not picking" --> "pot nicking"
# Your task is to create a function that takes a string of two words, separated by a space: words and returns a spoonerism of those words in a string, as in the above example.
# NOTE: All input strings will contain only two words. Spoonerisms can be more complex. For example, three-word phrases in which the first letters of the first and last words are swapped: "pack of lies" --> "lack of pies" or more than one letter from a word is swapped: "flat battery --> "bat flattery" You are NOT expected to account for these, or any other nuances involved in spoonerisms.
# Once you have completed this kata, a slightly more challenging take on the idea can be found here: http://www.codewars.com/kata/56dbed3a13c2f61ae3000bcd

# Solution
def spoonerize(words)
  (e = words.split).map.with_index { |x, i| e[i-1][0] + x[1..-1]}.join(' ')
end


# Completed at : 2021-02-23 02:15:16 +0100
