# Codewars - Kata Solution (Ruby)
# TRIPLE TROUBLE (8 kyu)

# Instructions
# Triple Trouble
# Create a function that will return a string that combines all of the letters of the three inputed strings in groups. Taking the first letter of all of the inputs and grouping them next to each other. Do this for every letter, see example below!
# E.g. Input: "aa", "bb" , "cc" => Output: "abcabc"
# Note: You can expect all of the inputs to be the same length.

# Solution
def triple_trouble(one, two, three)
  one.chars.map.with_index { |e, i| e + two[i] + three[i] }.join
end


# Completed at : 2020-10-30T00:13:00.477Z
