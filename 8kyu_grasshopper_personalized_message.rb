# Codewars - Kata Solution (Ruby)
# GRASSHOPPER  PERSONALIZED MESSAGE (8 kyu)

# Instructions
# Personalized greeting
# Create a function that gives a personalized greeting. This function takes two parameters: name and owner.
# Use conditionals to return the proper message:
# case return
# name equals owner 'Hello boss'
# otherwise 'Hello guest'

# Solution
def greet(n,o) 
  "Hello #{n==o ? "boss":"guest"}"
end


# Completed at : 2020-10-30T04:26:43.923Z
