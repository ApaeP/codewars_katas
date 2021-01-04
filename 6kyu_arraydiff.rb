# Codewars - Kata Solution (Ruby)
# ARRAYDIFF (6 kyu)

# Instructions
# Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result.
# It should remove all values from list a, which are present in list b.
# array_diff([1,2],[1]) == [2]
# If a value is present in b, all of its occurrences must be removed from the other:
# array_diff([1,2],[1]) == [2]

# Solution
def array_diff(a, b)
  a - b
end


# Completed at : 2021-01-05 00:53:59 +0100
