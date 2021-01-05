# Codewars - Kata Solution (Ruby)
# ENUMERABLE MAGIC 20  CASCADING SUBSETS (8 kyu)

# Instructions
# Create a method each_cons that accepts a list and a number n, and returns cascading subsets of the list of size n, like so:
# each_cons([1,2,3,4], 2)
#   #=> [[1,2], [2,3], [3,4]]

# each_cons([1,2,3,4], 3)
#   #=> [[1,2,3],[2,3,4]]
# As you can see, the lists are cascading; ie, they overlap, but never out of order.
# If you need help, here's a reference:
# http://www.rubycuts.com/enum-each-cons

# Solution
def each_cons list, n
  arr = []
  list.each_cons(n) { |e| arr << e }
  arr
end


# Completed at : 2020-11-07T01:14:42.038Z
