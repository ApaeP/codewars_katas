# Codewars - Kata Solution (Ruby)
# ARE ARROW FUNCTIONS ODD (8 kyu)

# Instructions
# Time to test your basic knowledge in functions! Return the odds from a list:
# odds([1,2,3,4,5]) #=> [1,3,5]

# Solution
def odds(v)
  v.select(&:odd?)
end


# Completed at : 2021-01-16 17:14:39 +0100
