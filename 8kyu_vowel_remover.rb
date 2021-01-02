# Codewars - Kata Solution (Ruby)
# VOWEL REMOVER (8 kyu)

# Instructions
# Create a function called shortcut to remove all the lowercase vowels in a given string.
# Examples
# shortcut("codewars") # --> cdwrs
# shortcut("goodbye")  # --> gdby
# Don't worry about uppercase vowels.

# Solution
def shortcut(s)
  s.tr('aeiou', '')
end


# Completed at : 2020-11-21T19:14:21.311Z
