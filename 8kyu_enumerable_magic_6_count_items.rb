# Codewars - Kata Solution (Ruby)
# ENUMERABLE MAGIC 6  COUNT ITEMS (8 kyu)

# Instructions
# Create a method count that accepts a list and a block, and returns the total number of items for which the block returns true.
# If you need help, here's a reference:
# http://www.rubycuts.com/enum-count

# Solution
def count list, &block
  list.count &block
end


# Completed at : 2020-11-21T19:16:03.334Z
