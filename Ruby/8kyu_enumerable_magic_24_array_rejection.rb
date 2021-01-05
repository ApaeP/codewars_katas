# Codewars - Kata Solution (Ruby)
# ENUMERABLE MAGIC 24  ARRAY REJECTION (8 kyu)

# Instructions
# Create a method reject that accepts a list and a block, and returns a list of elements for which the block returns false.
# If you need help, here's a reference:
# http://www.rubycuts.com/enum-reject

# Solution
def reject list, &block
  list.reject(&block)
end


# Completed at : 2020-11-07T01:09:08.242Z
