# Codewars - Kata Solution (Ruby)
# MULTIPLY THE NUMBER (8 kyu)

# Instructions
# Jack really likes his number five: the trick here is that you have to multiply each number by 5 raised to the number of digits of each numbers, so, for example:
# multiply(3)==15
# multiply(10)==250
# multiply(200)==25000
# multiply(0)==0
# multiply(-3)==-15

# Solution
def multiply(n)
  5 ** n.abs.digits.size * n
end


# Completed at : 2020-11-07T02:47:21.059Z
