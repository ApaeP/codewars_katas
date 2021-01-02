# Codewars - Kata Solution (Ruby)
# ENUMERABLE MAGIC 29  GROUPING ELEMENTS TOGETHER (8 kyu)

# Instructions
# Create a method group_by that accepts a list and a block. It should return a hash where the keys are the block return values, and the hash values are arrays of the corresponding items grouped together.
# Here's a simple example:
# animals = ["cat", "dog", "duck", "cow", "donkey"]
# group_by(animals){|animal| animal[0]}
#     #=> {"c" => ["cat", "cow"], "d" => ["dog", "duck", "donkey"]}
# If you need help, here's a reference:
# http://www.rubycuts.com/enum-group-by

# Solution
def group_by list, &block
  list.group_by(&block)
end


# Completed at : 2020-11-07T01:07:13.623Z
