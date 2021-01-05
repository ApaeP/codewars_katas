# Codewars - Kata Solution (Ruby)
# MULTIPLE OF INDEX (8 kyu)

# Instructions
# Return a new array consisting of elements which are multiple of their own index in input array (length > 1).
# Some cases:
# [22, -6, 32, 82, 9, 25] =>  [-6, 32, 25]

# [68, -1, 1, -7, 10, 10] => [-1, 10]

# [-56,-85,72,-26,-14,76,-27,72,35,-21,-67,87,0,21,59,27,-92,68] => [-85, 72, 0, 68]

# Solution
def multiple_of_index arr
  arr.select.with_index { |x, i| i == 0 ? false : x % i == 0 }
end


# Completed at : 2020-10-30T03:44:46.033Z
