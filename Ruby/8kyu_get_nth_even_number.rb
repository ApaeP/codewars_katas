# Codewars - Kata Solution (Ruby)
# GET NTH EVEN NUMBER (8 kyu)

# Instructions
# Return the Nth Even Number
# nthEven(1) //=> 0, the first even number is 0
# nthEven(3) //=> 4, the 3rd even number is 4 (0, 2, 4)

# nthEven(100) //=> 198
# nthEven(1298734) //=> 2597466
# The input will not be 0.

# Solution
def nth_even(n)
  2*(n-1)
end


# Completed at : 2020-10-30T18:57:15.313Z
