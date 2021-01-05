# Codewars - Kata Solution (Ruby)
# ENUMERABLE MAGIC 8  FIND THE INDEX OF THE MATCHING ITEM (8 kyu)

# Instructions
# Create a method find_index that accepts a list and a block, and returns index of the first item for which the block returns true. If no item in the list matches, return nil.
# If you need help, here's a reference:
# http://www.rubycuts.com/enum-find-index

# Solution
def find_index list, &block
  list.find_index(&block)
end


# Completed at : 2020-11-07T01:19:06.802Z
