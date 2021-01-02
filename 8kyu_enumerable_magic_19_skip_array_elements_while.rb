# Codewars - Kata Solution (Ruby)
# ENUMERABLE MAGIC 19  SKIP ARRAY ELEMENTS WHILE (8 kyu)

# Instructions
# Create a method drop_while that accepts a list and a block, and returns a copy of the list that skips over elements from the left, for as long as the given block returns true.
# If you need help, here's a reference:
# http://www.rubycuts.com/enum-drop-while

# Solution
def drop_while list, &block
  list.drop_while(&block)
end


# Completed at : 2020-11-07T01:12:43.145Z
