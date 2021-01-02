# Codewars - Kata Solution (Ruby)
# MERGING SORTED INTEGER ARRAYS WITHOUT DUPLICATES (8 kyu)

# Instructions
# Write a function that merges two sorted arrays into a single one. The arrays only contain integers. Also, the final outcome must be sorted and not have any duplicate.

# Solution
def merge_arrays(a, b)
  (a + b).uniq.sort
end


# Completed at : 2020-10-30T03:10:39.902Z
