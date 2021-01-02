# Codewars - Kata Solution (Ruby)
# HIGHEST AND LOWEST (7 kyu)

# Instructions
# In this little assignment you are given a string of space separated numbers, and have to return the highest and lowest number.
# Example:
# high_and_low("1 2 3 4 5")  # return "5 1"
# high_and_low("1 2 -3 4 5") # return "5 -3"
# high_and_low("1 9 3 4 -5") # return "9 -5"
# Notes:
# All numbers are valid Int32, no need to validate them.
# There will always be at least one number in the input string.
# Output string must be two numbers separated by a single space, and highest number is first.

# Solution
def high_and_low(n)
  "#{n.split(' ').map(&:to_i).max} #{n.split(' ').map(&:to_i).min}"
end


# Completed at : 2020-11-28T00:43:23.093Z
