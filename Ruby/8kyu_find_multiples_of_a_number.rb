# Codewars - Kata Solution (Ruby)
# FIND MULTIPLES OF A NUMBER (8 kyu)

# Instructions
# In this simple exercise, you will build a program that takes a value, integer, and returns a list of its multiples up to another value, limit. If limit is a multiple of integer, it should be included as well. There will only ever be positive integers passed into the function, not consisting of 0. The limit will always be higher than the base.
# For example, if the parameters passed are (2, 6), the function should return [2, 4, 6] as 2, 4, and 6 are the multiples of 2 up to 6.
# If you can, try writing it in only one line of code.

# Solution
def find_multiples(int, l)
  a, i = [int], 2
  a << int * i and i += 1 until a.last > l
  a[0..-2]
end


# Completed at : 2020-10-29T01:34:46.284Z
