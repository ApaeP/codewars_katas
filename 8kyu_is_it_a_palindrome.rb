# Codewars - Kata Solution (Ruby)
# IS IT A PALINDROME (8 kyu)

# Instructions
# Write function isPalindrome that checks if a given string (case insensitive) is a palindrome.
# In Racket, the function is called palindrome?

# (palindrome? "nope") ; returns #f
# (palindrome? "Yay")  ; returns #t

# Solution
def is_palindrome str
  str.downcase.chars.reverse == str.downcase.chars
end


# Completed at : 2020-11-01T20:49:08.332Z
