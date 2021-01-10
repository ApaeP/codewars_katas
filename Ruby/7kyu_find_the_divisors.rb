# Codewars - Kata Solution (Ruby)
# FIND THE DIVISORS (7 kyu)

# Instructions
# Create a function named divisors/Divisors that takes an integer n > 1 and returns an array with all of the integer's divisors(except for 1 and the number itself), from smallest to largest. If the number is prime return the string '(integer) is prime' (null in C#) (use Either String a in Haskell and Result<Vec<u32>, String> in Rust).
# Example:
# divisors(12) # should return [2,3,4,6]
# divisors(25) # should return [5]
# divisors(13) # should return "13 is prime"

# Solution
def divisors(n)
  (a = (2..n - 1).select { |x| n % x == 0 } ).empty? ? "#{n} is prime" : a
end


# Completed at : 2021-01-10 01:32:32 +0100
