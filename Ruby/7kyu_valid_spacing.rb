# Codewars - Kata Solution (Ruby)
# VALID SPACING (7 kyu)

# Instructions
# Task
# Your task is to write a function called valid_spacing() or validSpacing() which checks if a string has valid spacing. The function should return either True or False.
# For this kata, the definition of valid spacing is one space between words, and no leading or trailing spaces. Below are some examples of what the function should return.
# 'Hello world' = true
# ' Hello world' = false
# 'Hello world  ' = false
# 'Hello  world' = false
# 'Hello' = true
# // Even though there are no spaces, it is still valid because none are needed
# 'Helloworld' = true 
# // true because we are not checking for the validity of words.
# 'Helloworld ' = false
# ' ' = false
# '' = true
# Note - there will be no punctuation or digits in the input string, only letters.

# Solution
def valid_spacing(s)
  return false if s.start_with?(' ') || s.end_with?(' ') || s.match?(/\s{2}/)
  true
end


# Completed at : 2020-12-17T03:16:23.076Z
