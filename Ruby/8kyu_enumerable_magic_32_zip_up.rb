# Codewars - Kata Solution (Ruby)
# ENUMERABLE MAGIC 32  ZIP UP (8 kyu)

# Instructions
# Create a method zip that accepts two lists of the same length, and combines their result into a single array, like so:
# first = ['a', 'c', 'e']
# second = ['b', 'd', 'f']
# zip(first, second)
#     #=> ['a', 'b', 'c', 'd', 'e', 'f']
# If you need help, here's a reference:
# http://www.rubycuts.com/enum-zip/

# Solution
def zip first, second
  first.zip(second).flatten
end


# Completed at : 2020-11-03T19:30:29.931Z
