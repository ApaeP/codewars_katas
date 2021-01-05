# Codewars - Kata Solution (Ruby)
# PALINDROME STRINGS (8 kyu)

# Instructions
# Palindrome strings
# A palindrome is a word, phrase, number, or other sequence of characters which reads the same backward or forward. This includes capital letters, punctuation, and word dividers.
# Implement a function that checks if something is a palindrome.
# Examples
# isPalindrome("anna")   ==> true
# isPalindrome("walter") ==> false
# isPalindrome(12321)    ==> true
# isPalindrome(123456)   ==> false

# Solution
def is_palindrome(str)
  str.to_s.reverse ==  str.to_s
end


# Completed at : 2020-11-03T00:59:38.389Z
