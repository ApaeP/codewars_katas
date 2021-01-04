# Codewars - Kata Solution (Ruby)
# BIT COUNTING (6 kyu)

# Instructions
# Write a function that takes an integer as input, and returns the number of bits that are equal to one in the binary representation of that number. You can guarantee that input is non-negative.
# Example: The binary representation of 1234 is 10011010010, so the function should return 5 in this case

# Solution
def count_bits(n)
  n.to_s(2).to_i.digits.sum
end


# Completed at : 2021-01-05 00:48:52 +0100
