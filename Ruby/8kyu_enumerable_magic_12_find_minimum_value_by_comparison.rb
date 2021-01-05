# Codewars - Kata Solution (Ruby)
# ENUMERABLE MAGIC 12  FIND MINIMUM VALUE BY COMPARISON (8 kyu)

# Instructions
# Create a method min that accepts a list and a block, runs the block for each comparison in the list, and returns the item with the lowest value.
# If you need help, here's a reference:
# http://www.rubycuts.com/enum-min

# Solution
def min list, &block
  list.min &block
end


# Completed at : 2020-11-21T18:53:37.437Z
