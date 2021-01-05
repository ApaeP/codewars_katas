# Codewars - Kata Solution (Ruby)
# DOUBLE CHAR (8 kyu)

# Instructions
# Given a string, you have to return a string in which each character (case-sensitive) is repeated once.
# double_char("String") ==> "SSttrriinngg"

# double_char("Hello World") ==> "HHeelllloo  WWoorrlldd"

# double_char("1234!_ ") ==> "11223344!!__  "
# Good Luck!

# Solution
def double_char(str)
  str.chars.map { |e| e + e}.join
end


# Completed at : 2020-11-21T18:24:49.158Z
