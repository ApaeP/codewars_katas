# Codewars - Kata Solution (Ruby)
# ENUMERABLE MAGIC 26  GRAB ELEMENTS WHILE (8 kyu)

# Instructions
# Create a method take_while that accepts a list and a block, and returns a array of the first several elements from the list, for as long as the block returns true.
# Keep in mind, we don't want all the items for which the block returns true; once we get a false response, we want to stop looking. So this example:
# take_while([0,1,2,3,4,5,6]){|item| item.even?}
# Will only return [0], not [0,2,4,6].
# If you need help, here's a reference:
# http://www.rubycuts.com/enum-take-while

# Solution
def take_while list, &block
  list.take_while(&block)
end


# Completed at : 2020-11-07T01:08:44.110Z
