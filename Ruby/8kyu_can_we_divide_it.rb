# Codewars - Kata Solution (Ruby)
# CAN WE DIVIDE IT (8 kyu)

# Instructions
# Your task is to create functionisDivideBy (or is_divide_by) to check if an integer number is divisible by each out of two arguments.
# A few cases:
# (-12, 2, -6)  ->  true
# (-12, 2, -5)  ->  false

# (45, 1, 6)    ->  false
# (45, 5, 15)   ->  true

# (4, 1, 4)     ->  true
# (15, -5, 3)   ->  true

# Solution
def is_divide_by(number, a, b)
  number % a == 0 && number % b == 0
end


# Completed at : 2020-10-28T23:41:07.987Z
