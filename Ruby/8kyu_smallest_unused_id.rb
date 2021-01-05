# Codewars - Kata Solution (Ruby)
# SMALLEST UNUSED ID (8 kyu)

# Instructions
# Hey awesome programmer!
# You've got much data to manage and of course you use zero-based and non-negative ID's to make each data item unique!
# Therefore you need a method, which returns the smallest unused ID for your next new data item...
# Note: The given array of used IDs may be unsorted. For test reasons there may be duplicate IDs, but you don't have to find or remove them!
# Go on and code some pure awesomeness!

# Solution
def next_id(arr)
  arr = arr.uniq.sort
  arr.each_with_index { |x, i| return i unless x == i }
  arr.empty? ? 0 : arr.last + 1
end


# Completed at : 2020-10-29T00:08:59.123Z
