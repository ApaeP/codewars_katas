# Codewars - Kata Solution (Ruby)
# ABBREVIATE A TWO WORD NAME (8 kyu)

# Instructions
# Write a function to convert a name into initials. This kata strictly takes two words with one space in between them.
# The output should be two capital letters with a dot separating them.
# It should look like this:
# Sam Harris => S.H
# Patrick Feeney => P.F

# Solution
def abbrev_name(name)
  name.split(' ').map { |n| n[0].capitalize }.join('.')
end


# Completed at : 2020-10-29T02:32:25.009Z
