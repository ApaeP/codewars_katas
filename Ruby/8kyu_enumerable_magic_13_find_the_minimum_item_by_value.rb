# Codewars - Kata Solution (Ruby)
# ENUMERABLE MAGIC 13  FIND THE MINIMUM ITEM BY VALUE (8 kyu)

# Instructions
# Create a method min_by that accepts a list and a block, runs the block for each item in the list, and returns the item with the lowest block return value.
# If you need help, here's a reference:
# http://www.rubycuts.com/enum-min-by

# Solution
def min_by list, &block
  list.min_by(&block)
end


# Completed at : 2020-11-07T01:17:12.049Z
