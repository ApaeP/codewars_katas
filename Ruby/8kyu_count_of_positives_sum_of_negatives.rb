# Codewars - Kata Solution (Ruby)
# COUNT OF POSITIVES  SUM OF NEGATIVES (8 kyu)

# Instructions
# Given an array of integers.
# Return an array, where the first element is the count of positives numbers and the second element is sum of negative numbers.
# If the input array is empty or null, return an empty array.
# Example
# For input [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15], you should return [10, -65].

# Solution
def count_positives_sum_negatives(lst)
    return [] if lst == []
    a = lst.select(&:positive?)
  p [a.count, (lst - a).sum]
end


# Completed at : 2020-11-01T20:15:28.820Z
