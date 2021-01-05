# Codewars - Kata Solution (Ruby)
# REPLACE WITH ALPHABET POSITION (6 kyu)

# Instructions
# Welcome.
# In this kata you are required to, given a string, replace every letter with its position in the alphabet.
# If anything in the text isn't a letter, ignore it and don't return it.
# "a" = 1, "b" = 2, etc.
# Example
# alphabet_position("The sunset sets at twelve o' clock.")
# Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" (as a string)

# Solution
def alphabet_position(text)
  normalized_text = text.gsub(/[^a-zA-Z]/, "").downcase
  scores = Hash.new
  answer = []
  ("a".."z").each_with_index { |lettre, index| index == 0 ? scores[lettre.to_sym] = index+1 : scores[lettre.to_sym] = index+1 }
  normalized_text.split('').each_with_index { |lettre, index| index == 0 ? answer << "#{scores[lettre.to_sym]}" : answer << " #{scores[lettre.to_sym]}" }
  answer.join
end
