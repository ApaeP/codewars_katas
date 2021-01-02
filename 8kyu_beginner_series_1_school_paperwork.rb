# Codewars - Kata Solution (Ruby)
# BEGINNER SERIES 1 SCHOOL PAPERWORK (8 kyu)

# Instructions
# Your classmates asked you to copy some paperwork for them. You know that there are 'n' classmates and the paperwork has 'm' pages.
# Your task is to calculate how many blank pages do you need.
# Example:
# paperwork(5, 5) == 25
# Note: if n < 0 or m < 0 return 0!
# Waiting for translations and Feedback! Thanks!

# Solution
def paperwork(n, m)
  n > 0 && m > 0 ? n*m : 0
end


# Completed at : 2020-10-29T02:34:44.126Z
