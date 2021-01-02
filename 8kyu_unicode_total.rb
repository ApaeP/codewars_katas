# Codewars - Kata Solution (Ruby)
# UNICODE TOTAL (8 kyu)

# Instructions
# You'll be given a string, and have to return the total of all the unicode characters as an int. Should be able to handle any characters sent at it.
# examples:
# uniTotal("a") == 97 uniTotal("aaa") == 291

# Solution
def uni_total(s)
  s.chars.map { |i| i.ord }.sum
end


# Completed at : 2020-11-07T01:49:26.594Z
