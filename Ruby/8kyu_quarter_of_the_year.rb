# Codewars - Kata Solution (Ruby)
# QUARTER OF THE YEAR (8 kyu)

# Instructions
# Given a month as an integer from 1 to 12, return to which quarter of the year it belongs as an integer number.
# For example: month 2 (February), is part of the first quarter; month 6 (June), is part of the second quarter; and month 11 (November), is part of the fourth quarter.

# Solution
def quarter_of(month)
  month.fdiv(3).ceil
end


# Completed at : 2020-10-29T01:39:18.276Z
