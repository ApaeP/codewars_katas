# Codewars - Kata Solution (Ruby)
# ALL STAR CODE CHALLENGE 18 (8 kyu)

# Instructions
# This Kata is intended as a small challenge for my students
# All Star Code Challenge #18
# Create a function that accepts 2 string arguments and returns an integer of the count of occurrences the 2nd argument is found in the first one.
# If no occurrences can be found, a count of 0 should be returned.
# strCount('Hello', 'o') # => 1
# strCount('Hello', 'l') # => 2
# strCount('', 'z')      # => 0
# Notes:
# The first argument can be an empty string
# The second string argument will always be of length 1

# Solution
def str_count(word, letter)
  word.length - (word.chars - [letter]).size
end
def str_count(word, letter)
  word.count(letter)
end


# Completed at : 2020-10-29T23:46:02.970Z