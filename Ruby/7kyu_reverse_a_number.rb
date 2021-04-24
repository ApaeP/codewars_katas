# Codewars - Kata Solution (Ruby)
# REVERSE A NUMBER (7 kyu)

# Instructions
# Given a number, write a function to output its reverse digits. (e.g. given 123 the answer is 321)
# Numbers should preserve their sign; i.e. a negative number should still be negative when reversed.
# Examples
#  123 ->  321
# -456 -> -654
# 1000 ->    1

# Solution
def reverse_number(n)
  x = n.abs.digits.join.to_i
  n.negative? ? x * -1 : x
end


# Completed at : 2021-04-24 02:24:35 +0200
