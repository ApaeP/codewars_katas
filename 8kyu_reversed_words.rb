# Codewars - Kata Solution (Ruby)
# REVERSED WORDS (8 kyu)

# Instructions
# Complete the solution so that it reverses all of the words within the string passed in.
# Example:
# solution("The greatest victory is that which requires no battle") 
# # should return "battle no requires which that is victory greatest The"

# Solution
def solution(s)
  s.split(' ').reverse.join(' ')
end


# Completed at : 2020-11-03T00:58:08.160Z
