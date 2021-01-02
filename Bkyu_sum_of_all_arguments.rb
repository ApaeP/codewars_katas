# Codewars - Kata Solution (Ruby)
# SUM OF ALL ARGUMENTS (B kyu)

# Instructions
# Calculate the sum of all the arguments passed to a function.
# Note: If any of the arguments is not a finite number the function should return false/False instead of the sum of the arguments.
# For example:
# sum(1,2,3,4)         should return 10
# sum(1, "two", 3)     should return false
# sum(1, 2, [3], NaN)  should return false

# Solution
def sum_all(*args)
  args.sum rescue false
end


# Completed at : 2021-01-02 20:37:02 +0100
