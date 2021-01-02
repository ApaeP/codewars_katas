# Codewars - Kata Solution (Ruby)
# ISOGRAMS (7 kyu)

# Instructions
# An isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement a function that determines whether a string that contains only letters is an isogram. Assume the empty string is an isogram. Ignore letter case.
# is_isogram("Dermatoglyphics" ) == true
# is_isogram("aba" ) == false
# is_isogram("moOse" ) == false # -- ignore letter case

# Solution
def is_isogram(s)
  s.downcase.chars.uniq.size == s.downcase.chars.size
end
