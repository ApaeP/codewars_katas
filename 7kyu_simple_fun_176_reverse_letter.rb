# Codewars - Kata Solution (Ruby)
# SIMPLE FUN 176 REVERSE LETTER (7 kyu)

# Instructions
# Task
# Given a string str, reverse it omitting all non-alphabetic characters.
# Example
# For str = "krishan", the output should be "nahsirk".
# For str = "ultr53o?n", the output should be "nortlu".
# Input/Output
# [input] string str
# A string consists of lowercase latin letters, digits and symbols.
# [output] a string

# Solution
def reverse_letter(s)
  s.gsub(/\W|\d/, '').reverse.tr('_', '')
end


# Completed at : 2020-11-28T00:46:10.392Z
