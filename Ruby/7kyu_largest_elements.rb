# Codewars - Kata Solution (Ruby)
# LARGEST ELEMENTS (7 kyu)

# Instructions
# Write a program that outputs the top n elements from a list.
# Example:
# largest(2, [7,6,5,4,3,2,1])
# # => [6,7]

# Solution
def largest(n,xs)
  xs.sort.last(n)
end


# Completed at : 2021-01-06 00:36:20 +0100
