# Codewars - Kata Solution (Ruby)
# SUM OF ODD CUBED NUMBERS (7 kyu)

# Instructions
# Find the sum of the odd numbers within an array, after cubing the initial integers. The function should return undefined/None/nil/NULL if any of the values aren't numbers.

# Solution
def cube_odd(arr)
  arr.map { |e| e ** 3 }.select(&:odd?).sum rescue nil
end


# Completed at : 2020-12-31T03:39:51.250Z
