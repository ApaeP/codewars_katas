# Codewars - Kata Solution (Ruby)
# SAY ME PLEASE OPERATIONS (7 kyu)

# Instructions
# You have a string of numbers; starting with the third number each number is the result of an operation performed using the previous two numbers.
# Complete the function which returns a string of the operations in order and separated by a comma and a space, e.g. "subtraction, subtraction, addition"
# The available operations are (in this order of preference):
# 1) addition
# 2) subtraction
# 3) multiplication
# 4) division
# Notes:
# All input data is valid
# The number of numbers in the input string >= 3
# For a case like "2 2 4" - when multiple variants are possible - choose the first possible operation from the list (in this case "addition")
# Integer division should be used
# Example
# "9 4 5 20 25"  -->  "subtraction, multiplication, addition"
# Because:
# 9 - 4 = 5   --> subtraction
# 4 * 5 = 20  --> multiplication
# 5 + 20 = 25 --> addition

# Solution
def say_me_operations(n, ans = [])
  x = n.split(' ').map(&:to_i)
  x.each_with_index do |e, i|
    next if i < 2
    r = [x[i-2], x[i-1]]
    if r.sum == e
      ans << 'addition'
    elsif r.reduce(:*) == e
      ans << 'multiplication'
    elsif r.reduce(:-) == e
      ans << 'subtraction'
    elsif r.reduce(:/) == e
      ans << 'division'
    end
  end
  ans.join(', ')
end


# Completed at : 2020-12-17T03:54:45.157Z
