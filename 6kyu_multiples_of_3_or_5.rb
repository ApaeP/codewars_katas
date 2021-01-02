# Codewars - Kata Solution (Ruby)
# MULTIPLES OF 3 OR 5 (6 kyu)

# Instructions
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.
# Note: If the number is a multiple of both 3 and 5, only count it once. Also, if a number is negative, return 0(for languages that do have them)
# Courtesy of projecteuler.net

# Solution
def solution(number)
 # put your solution here
 sum = 0 
 numberstoanalyze = (1...number)
 numberstoanalyze.each do |num|
   if num % 3 == 0
     sum += num
   elsif num % 5 == 0
     sum += num
   end
 end
 sum
end
def solution(n)
 (1..n - 1).select { |x| x % 3 == 0 || x % 5 == 0 }.sum
end
