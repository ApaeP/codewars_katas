# Codewars - Kata Solution (Ruby)
# JAVASCRIPT ARRAY FILTER (7 kyu)

# Instructions
# The solution would work like the following:
# get_even_numbers([2,4,5,6]) => [2,4,6]

# Solution
def get_even_numbers(arr)
  arr.select(&:even?)
end


# Completed at : 2021-01-08 16:09:47 +0100
