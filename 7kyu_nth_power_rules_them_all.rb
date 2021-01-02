# Codewars - Kata Solution (Ruby)
# NTH POWER RULES THEM ALL (7 kyu)

# Instructions
# You are provided with an array of positive integers and an additional integer n (n > 1).
# Calculate the sum of each value in the array to the nth power. Then subtract the sum of the original array.
# Examples
# {1, 2, 3}, 3  -->  (1^3 + 2^3 + 3^3 ) - (1 + 2 + 3)  -->  36 - 6  -->  30
# {1, 2}, 5     -->  (1^5 + 2^5) - (1 + 2)             -->  33 - 3  -->  30

# Solution
def modified_sum(nums, n)
  nums.map { |i| i ** n }.sum - nums.sum
end


# Completed at : 2020-11-27T17:05:50.758Z
