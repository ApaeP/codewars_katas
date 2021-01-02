# Codewars - Kata Solution (Ruby)
# ENUMERABLE MAGIC 31  ARRAY TO HASH (8 kyu)

# Instructions
# Create a method to_h that accepts a list, and converts it to a hash of key-value pairs.
# Here's a simple example:
# animals = [["cat", "dog"], ["duck", "cow"]]
# to_h(animals)
#     #=> {"cat" => "dog", "duck" => "cow"}
# If you need help, here's a reference:
# http://www.rubycuts.com/enum-to-h

# Solution
def to_h list
  hsh = {}
  list.each { |e| hsh[e[0]] = e[1] }
  hsh
end
def to_h list
  list.to_h
end


# Completed at : 2020-11-03T19:33:32.700Z
