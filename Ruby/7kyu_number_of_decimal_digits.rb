# Codewars - Kata Solution (Ruby)
# NUMBER OF DECIMAL DIGITS (7 kyu)

# Instructions
# Determine the total number of digits in the integer (n>=0) given as input to the function. For example, 9 is a single digit, 66 has 2 digits and 128685 has 6 digits. Be careful to avoid overflows/underflows.
# All inputs will be valid.

# Solution
def digits(n)
  n.digits.size
end


# Completed at : 2020-12-30T18:50:24.921Z
