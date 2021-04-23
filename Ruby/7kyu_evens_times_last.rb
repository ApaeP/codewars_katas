# Codewars - Kata Solution (Ruby)
# EVENS TIMES LAST (7 kyu)

# Instructions
# Given a sequence of integers, return the sum of all the integers that have an even index, multiplied by the integer at the last index.
# If the sequence is empty, you should return 0.

# Solution
def even_last(n) 
  n.select.with_index { |x, i| i.even? }.sum * n.last rescue 0
end


# Completed at : 2021-04-24 01:35:00 +0200
