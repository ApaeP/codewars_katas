# Codewars - Kata Solution (Ruby)
# SUM OF ARRAY SINGLES (7 kyu)

# Instructions
# In this Kata, you will be given an array of numbers in which two numbers occur once and the rest occur only twice. Your task will be to return the sum of the numbers that occur only once.
# For example, repeats([4,5,7,5,4,8]) = 15 because only the numbers 7 and 8 occur once, and their sum is 15. Every other number occurs twice.
# More examples in the test cases.
# Good luck!
# If you like this Kata, please try:
# Sum of prime-indexed elements
# Sum of integer combinations

# Solution
def repeats(arr)
  hsh ={}
  array = []
  arr.each { |e| hsh[e] ? hsh[e] += 1 : hsh[e] = 1 }
  hsh.each { |k, v| array << k if v == 1 }
  array.sum
end
def repeats(arr)
  arr.select { |e| arr.one? e }.reduce(:+)
end


# Completed at : 2020-10-28T18:49:16.603Z
