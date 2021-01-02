# Codewars - Kata Solution (Ruby)
# DISARIUM NUMBER SPECIAL NUMBERS SERIES 3 (7 kyu)

# Instructions
# Definition
# Disarium number is the number that The sum of its digits powered with their respective positions is equal to the number itself.
# Task
# Given a number, Find if it is Disarium or not .
# Warm-up (Highly recommended)
# Playing With Numbers Series
# Notes
# Number passed is always Positive .
# Return the result as String
# Input >> Output Examples
# disariumNumber(89) ==> return "Disarium !!"
# Explanation:
# Since , 81 + 92 = 89 , thus output is "Disarium !!"
# disariumNumber(564) ==> return "Not !!"
# Explanation:
# Since , 51 + 62 + 43 = 105 != 564 , thus output is "Not !!"
# Playing with Numbers Series
# Playing With Lists/Arrays Series
# For More Enjoyable Katas
# ALL translations are welcomed
# Enjoy Learning !!
# Zizou

# Solution
def disarium_number(n)
  n.digits.reverse.map.with_index { |e, i| e ** (i + 1) }.sum == n ? "Disarium !!" : "Not !!"
end


# Completed at : 2020-12-09T16:52:35.561Z
