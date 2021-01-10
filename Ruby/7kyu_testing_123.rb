# Codewars - Kata Solution (Ruby)
# TESTING 123 (7 kyu)

# Instructions
# Your team is writing a fancy new text editor and you've been tasked with implementing the line numbering.
# Write a function which takes a list of strings and returns each line prepended by the correct number.
# The numbering starts at 1. The format is n: string. Notice the colon and space in between.
# Examples:
# number [] # => []
# number ["a", "b", "c"] # => ["1: a", "2: b", "3: c"]

# Solution
def number(l)
  l.map.with_index { |x, i| "#{i+1}: #{x}" }
end


# Completed at : 2021-01-10 15:42:16 +0100
