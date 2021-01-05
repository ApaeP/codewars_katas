# Codewars - Kata Solution (Ruby)
# CONVERT STRING TO CAMEL CASE (6 kyu)

# Instructions
# Complete the method/function so that it converts dash/underscore delimited words into camel casing. The first word within the output should be capitalized only if the original word was capitalized (known as Upper Camel Case, also often referred to as Pascal case).
# Examples
# to_camel_case("the-stealth-warrior") # returns "theStealthWarrior"

# to_camel_case("The_Stealth_Warrior") # returns "TheStealthWarrior"

# Solution
def to_camel_case(str)
  (str.split(/(-|_)/) - ['-', '_']).map.with_index { |e, i| i == 0 ? e : e.capitalize }.join
end


# Completed at : 2021-01-05 23:39:37 +0100
