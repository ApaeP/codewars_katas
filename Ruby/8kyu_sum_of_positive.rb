# Codewars - Kata Solution (Ruby)
# SUM OF POSITIVE (8 kyu)

# Instructions
# You get an array of numbers, return the sum of all of the positives ones.
# Example [1,-4,7,12] => 1 + 7 + 12 = 20
# Note: if there is nothing to sum, the sum is default to 0.

# Solution
def positive_sum(arr)
positive = []
 arr.each do |number|
   if number.positive?
     positive << number
     else
     number
     end
     end
     positive.sum
end
def positive_sum(arr)
  arr.select(&:positive?).sum
end


# Completed at : 2019-11-01T18:18:15.966Z
