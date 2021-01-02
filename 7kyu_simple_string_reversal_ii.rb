# Codewars - Kata Solution (Ruby)
# SIMPLE STRING REVERSAL II (7 kyu)

# Instructions
# In this Kata, you will be given a string and two indexes (a and b). Your task is to reverse the portion of that string between those two indices inclusive.
# solve("codewars",1,5) = "cawedors" -- elements at index 1 to 5 inclusive are "odewa". So we reverse them.
# solve("cODEWArs", 1,5) = "cAWEDOrs" -- to help visualize.
# Input will be lowercase and uppercase letters only.
# The first index a will always be lower that than the string length; the second index b can be greater than the string length. More examples in the test cases. Good luck!
# Please also try:
# Simple time difference
# Simple remove duplicates

# Solution
def solve st,a,b
  st[0...a] + st[a..b].reverse + st[b + 1..-1] rescue st[0...a] + st[a..b].reverse
end


# Completed at : 2020-12-17T04:45:38.259Z
