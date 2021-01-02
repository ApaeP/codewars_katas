# Codewars - Kata Solution (Ruby)
# ENUMERABLE MAGIC 27  THE LEAST AND THE GREATEST (8 kyu)

# Instructions
# Create a method minmax that accepts a list and a block. The block itself should compare two elements, so the method can sort the elements and return the minimum and maximum as a 2-element array.
# Here's a simple example:
# minmax([3,2,5,4]){|a,b| a <=> b}  #=> [2,5] 
# minmax([2,14,7,9]){|a,b| a.to_s <=> b.to_s}  #=> [14,9]
# If you need help, here's a reference:
# http://www.rubycuts.com/enum-minmax

# Solution
def minmax list, &block
  list.minmax(&block)
end


# Completed at : 2020-11-07T01:08:16.515Z
