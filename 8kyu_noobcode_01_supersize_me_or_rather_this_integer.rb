# Codewars - Kata Solution (Ruby)
# NOOBCODE 01 SUPERSIZE ME OR RATHER THIS INTEGER (8 kyu)

# Instructions
# Write a function that rearranges an integer into its largest possible value.
# super_size(123456) # 654321
# super_size(105)    # 510
# super_size(12)     # 21
# If the argument passed through is single digit or is already the maximum possible integer, your function should simply return it.

# Solution
def super_size(n)
  n.digits.sort.reverse.join.to_i
end


# Completed at : 2020-10-30T01:09:34.804Z
