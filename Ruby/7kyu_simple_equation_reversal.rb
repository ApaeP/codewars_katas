# Codewars - Kata Solution (Ruby)
# SIMPLE EQUATION REVERSAL (7 kyu)

# Instructions
# Given a mathematical equation that has *,+,-,/, reverse it as follows:
# solve("100*b/y") = "y/b*100"
# solve("a+b-c/d*30") = "30*d/c-b+a"
# More examples in test cases.
# Good luck!
# Please also try:
# Simple time difference
# Simple remove duplicates

# Solution
def solve(eq)
  eq.split(/\/|\+|-|\*/).reverse.zip(eq.chars.select{ |e| e.match?(/\/|\+|-|\*/) }.reverse).flatten.join
end


# Completed at : 2020-12-15T04:50:20.503Z
