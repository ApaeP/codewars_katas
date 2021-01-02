# Codewars - Kata Solution (Ruby)
# SIMPLE STRING CHARACTERS (7 kyu)

# Instructions
# In this Kata, you will be given a string and your task will be to return a list of ints detailing the count of uppercase letters, lowercase, numbers and special characters, as follows.
# Solve("*'&ABCDabcde12345") = [4,5,5,3]. 
# --the order is: uppercase letters, lowercase, numbers and special characters.
# More examples in the test cases.
# Good luck!

# Solution
def solve s
  e = s.chars
  a, b, c = e.count { |x| x.match(/[A-Z]/) }, e.count { |x| x.match(/[a-z]/) }, e.count { |x| x.match(/[\d]/) }
  [a, b, c, s.length - (a+b+c)]
end


# Completed at : 2020-12-14T04:02:05.878Z
