# Codewars - Kata Solution (Ruby)
# BREAK CAMELCASE (6 kyu)

# Instructions
# Complete the solution so that the function will break up camel casing, using a space between words.
# Example
# solution("camelCasing")  ==  "camel Casing"

# Solution
def solution(string)
  string.chars.map { |l| ('A'..'Z').to_a.include?(l) ? " #{l}" : l }.join
end
