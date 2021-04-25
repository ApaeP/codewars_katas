# Codewars - Kata Solution (Ruby)
# SWITCHEROO (7 kyu)

# Instructions
# Given a string made up of letters a, b, and/or c, switch the position of letters a and b (change a to b and vice versa). Leave any incidence of c untouched.
# Example:
# 'acb' --> 'bca'
# 'aabacbaa' --> 'bbabcabb'

# Solution
def switcheroo(x) 
  x.tr('ab', 'ba')
end


# Completed at : 2021-04-26 00:59:16 +0200
