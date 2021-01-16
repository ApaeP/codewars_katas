# Codewars - Kata Solution (Ruby)
# FIZZ BUZZ (7 kyu)

# Instructions
# Return an array containing the numbers from 1 to N, where N is the parametered value. N will never be less than 1 (in C#, N might be less then 1).
# Replace certain values however if any of the following conditions are met:
# If the value is a multiple of 3: use the value "Fizz" instead
# If the value is a multiple of 5: use the value "Buzz" instead
# If the value is a multiple of 3 & 5: use the value "FizzBuzz" instead
# Method calling example:
# fizzbuzz(3) -->  [1, 2, "Fizz"]

# Solution
def fizzbuzz(n)
  (1..n).map { |x| (y = x % 3 == 0) && x % 5 == 0 ? "FizzBuzz" : y ? "Fizz" : x % 5 == 0 ? "Buzz" : x }
end


# Completed at : 2021-01-16 16:30:14 +0100
