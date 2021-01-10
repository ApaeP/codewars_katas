# Codewars - Kata Solution (Ruby)
# NO ODDITIES HERE (7 kyu)

# Instructions
# Write a small function that returns the values of an array that are not odd.
# All values in the array will be integers. Return the good values in the order they are given.
# def no_odds( values )

# Solution
def no_odds(v)
  v.reject(&:odd?)
end


# Completed at : 2021-01-10 15:13:41 +0100
