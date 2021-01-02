# Codewars - Kata Solution (Ruby)
# ENUMERABLE MAGIC 21  FILTER THAT ARRAY (8 kyu)

# Instructions
# Create a method select that accepts a list and a block, and returns a new array of elements for which the given block returns true.
# If you need help, here's a reference:
# http://www.rubycuts.com/enum-select

# Solution
def select list, &block
  list.select(&block)
end


# Completed at : 2020-11-07T01:12:12.942Z
