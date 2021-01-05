# Codewars - Kata Solution (Ruby)
# SUM THE STRINGS (8 kyu)

# Instructions
# Create a function that takes 2 positive integers in form of a string as an input, and outputs the sum (also as a string):
#   sum_str("4", "5")    # should output "9"
#   sum_str("34", "5")   # should output "39"
# If either input is an empty string, consider it as zero.

# Solution
def sum_str(*args)
  args.map(&:to_i).sum.to_s
end
