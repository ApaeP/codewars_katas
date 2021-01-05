# Codewars - Kata Solution (Ruby)
# EVENS AND ODDS (7 kyu)

# Instructions
# This kata is about converting numbers to their binary or hexadecimal representation:
# If a number is even, convert it to binary.
# If a number is odd, convert it to hex.

# Solution
def evensAndOdds(n)
 n.even? ? n.to_s(2) : n.to_s(16)
end


# Completed at : 2020-11-23T13:29:50.272Z
