# Codewars - Kata Solution (Ruby)
# EXES AND OHS (7 kyu)

# Instructions
# Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contain any char.
# Examples input/output:
# XO("ooxx") => true
# XO("xooxx") => false
# XO("ooxXm") => true
# XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
# XO("zzoo") => false

# Solution
def XO(s)
  s.downcase.chars.count('x') == s.downcase.chars.count('o')
end
