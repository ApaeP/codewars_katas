# Codewars - Kata Solution (Ruby)
# ENUMERABLE MAGIC 14  MAP THAT ARRAY (8 kyu)

# Instructions
# Create a method map that accepts a list and a block, runs the block for each item in the list, and returns a new array with the block return values.
# If you need help, here's a reference:
# http://www.rubycuts.com/enum-map

# Solution
def map list, &block
  list.map(&block)
end


# Completed at : 2020-11-07T01:16:47.589Z
