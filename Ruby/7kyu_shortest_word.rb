# Codewars - Kata Solution (Ruby)
# SHORTEST WORD (7 kyu)

# Instructions
# Simple, given a string of words, return the length of the shortest word(s).
# String will never be empty and you do not need to account for different data types.

# Solution
def find_short(s)
    s.split.sort_by { |e| e.length }[0].length
end


# Completed at : 2020-10-20T23:31:33.083Z
