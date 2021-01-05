# Codewars - Kata Solution (Ruby)
# ENUMERABLE MAGIC 11  FIND THE MAXIMUM BY VALUE (8 kyu)

# Instructions
# Create a method max_by that accepts a list and a block, runs the block for each item in the list, and returns the item with the highest block return value.
# If you need help, here's a reference:
# http://www.rubycuts.com/enum-max-by

# Solution
def max_by list, &block
  list.max_by(&block)
end


# Completed at : 2020-11-07T01:17:34.476Z
