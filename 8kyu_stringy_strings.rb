# Codewars - Kata Solution (Ruby)
# STRINGY STRINGS (8 kyu)

# Instructions
# write me a function stringy that takes a size and returns a string of alternating '1s' and '0s'.
# the string should start with a 1.
# a string with size 6 should return :'101010'.
# with size 4 should return : '1010'.
# with size 12 should return : '101010101010'.
# The size will always be positive and will only use whole numbers.

# Solution
def stringy(size)
  (1..size).to_a.map.with_index { |x, i| i.odd? ? '0' : '1' }.join
end


# Completed at : 2020-11-03T02:48:01.297Z
