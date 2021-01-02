# Codewars - Kata Solution (Ruby)
# SHORT LONG SHORT (8 kyu)

# Instructions
# Given 2 strings, a and b, return a string of the form short+long+short, with the shorter string on the outside and the longer string on the inside. The strings will not be the same length, but they may be empty ( length 0 ).
# For example:
# solution("1", "22") # returns "1221"
# solution("22", "1") # returns "1221"

# Solution
def solution(a, b)
  a.length > b.length ? b+a+b : a+b+a
end


# Completed at : 2020-10-29T00:40:55.273Z
