# Codewars - Kata Solution (Ruby)
# ENUMERABLE MAGIC 2  TRUE FOR ANY (8 kyu)

# Instructions
# Create an any? (JS: any) function that accepts an array and a block (JS: function), and returns true if the block (/function) returns true for any item in the array. If the array is empty, the function should return false.
# Ruby: If you get stuck, you can read up here:
# http://www.rubycuts.com/enum-any

# Solution
def any? list, &block
  list.map { |e| yield e }.include?(true)
end


# Completed at : 2020-11-03T03:26:02.437Z
