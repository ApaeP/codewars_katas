# Codewars - Kata Solution (Ruby)
# ENUMERABLE MAGIC 16  SORT THAT LIST (8 kyu)

# Instructions
# Create a method sort that accepts a list and a block. The block should define how sort compares two items on the list. It should return a new, sorted version of the list.
# If you need help, here's a reference:
# http://www.rubycuts.com/enum-sort

# Solution
def sort list, &block
  list.sort(&block)
end


# Completed at : 2020-11-07T01:16:05.499Z
