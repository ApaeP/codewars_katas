# Codewars - Kata Solution (Ruby)
# ORDERED COUNT OF CHARACTERS (7 kyu)

# Instructions
# Count the number of occurrences of each character and return it as a list of tuples in order of appearance. For empty output return an empty list.
# Example:
# ordered_count("abracadabra") == [['a', 5], ['b', 2], ['r', 2], ['c', 1], ['d', 1]]

# Solution
def ordered_count(str, h = {})
  str.chars.each { |e| h[e] ? h[e] += 1 : h[e] = 1 }; h.to_a
end


# Completed at : 2020-12-17T04:56:27.078Z
