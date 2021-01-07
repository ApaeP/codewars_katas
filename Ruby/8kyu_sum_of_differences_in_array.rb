# Codewars - Kata Solution (Ruby)
# SUM OF DIFFERENCES IN ARRAY (8 kyu)

# Instructions
# Your task is to sum the differences between consecutive pairs in the array in descending order.
# For example:
# sum_of_differences([2, 1, 10])
# Returns 9
# Descending order: [10, 2, 1]
# Sum: (10 - 2) + (2 - 1) = 8 + 1 = 9
# If the array is empty or the array has only one element the result should be 0 (Nothing in Haskell).

# Solution
def sum_of_differences(arr)
  arr.sort.reverse.each_cons(2).map { |e| e.reduce(:-) }.sum
end


# Completed at : 2021-01-07 02:07:48 +0100
