# Codewars - Kata Solution (Ruby)
# ENUMERABLE MAGIC 17  SORT THAT LIST BY VALUE (8 kyu)

# Instructions
# Create a method sort_by that accepts a list and a block, and returns a new list sorted by the return values of the block.
# If you need help, here's a reference:
# http://www.rubycuts.com/enum-sort-by

# Solution
def sort_by list, &block
  list.sort_by(&block)
end


# Completed at : 2020-11-07T01:15:40.104Z
