# Codewars - Kata Solution (Ruby)
# GET NUMBER FROM STRING (8 kyu)

# Instructions
# Write a function which removes from string all non-digit characters and parse the remaining to number. E.g: "hell5o wor6ld" -> 56
# Function: ####javascript
# getNumberFromString(s)
# ####ruby
# get_number_from_string(s)
# ####CSharp
# GetNumberFromString(string s)

# Solution
def get_number_from_string(s)
  s.chars.map {|x| x[/\d+/]}.join.to_i
end


# Completed at : 2020-11-21T15:38:56.945Z
