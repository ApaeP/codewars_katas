# Codewars - Kata Solution (Ruby)
# SUM OF A SEQUENCE (7 kyu)

# Instructions
# Your task is to make function, which returns the sum of a sequence of integers.
# The sequence is defined by 3 non-negative values: begin, end, step.
# If begin value is greater than the end, function should returns 0
# Examples
# sequenceSum(2,2,2) === 2
# sequenceSum(2,6,2) === 12 // 2 + 4 + 6
# sequenceSum(1,5,1) === 15 // 1 + 2 + 3 + 4 + 5
# sequenceSum(1,5,3) === 5 // 1 + 4
# This is the first kata in the series:
# 1) Sum of a sequence (this kata)
# 2) Sum of a Sequence [Hard-Core Version]

# Solution
def sequence_sum(b, e, s)
  (b..e).step(s).sum
end


# Completed at : 2021-01-10 15:07:44 +0100
