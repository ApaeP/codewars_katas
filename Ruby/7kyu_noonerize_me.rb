# Codewars - Kata Solution (Ruby)
# NOONERIZE ME (7 kyu)

# Instructions
# Spoonerize... with numbers... numberize?... numboonerize?... noonerize? ...anyway! If you don't yet know what a spoonerism is and haven't yet tried my spoonerism kata, please do check it out first.
# You will create a function which takes an array of two positive integers, spoonerizes them, and returns the positive difference between them as a single number or 0 if the numbers are equal:
# [123, 456] = 423 - 156 = 267
# Your code must test that all array items are numbers and return "invalid array" if it finds that either item is not a number. The provided array will always contain 2 elements.
# When the inputs are valid, they will always be integers, no floats will be passed. However, you must take into account that the numbers will be of varying magnitude, between and within test cases.

# Solution
def noonerize(numbers)
  return "invalid array" unless numbers.all? { |x| x.is_a?(Integer)}
  (e = numbers.map(&:to_s)).map.with_index { |x, i| e[i-1][0] + x[1..-1]}.map(&:to_i).inject(:-).abs
end


# Completed at : 2021-02-23 03:00:46 +0100
