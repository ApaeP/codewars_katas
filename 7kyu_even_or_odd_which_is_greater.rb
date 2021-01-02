# Codewars - Kata Solution (Ruby)
# EVEN OR ODD  WHICH IS GREATER (7 kyu)

# Instructions
# Given a string of digits confirm whether the sum of all the individual even digits are greater than the sum of all the indiviudal odd digits. Always a string of numbers will be given.
# If the sum of even numbers is greater than the odd numbers return: "Even is greater than Odd"
# If the sum of odd numbers is greater than the sum of even numbers return: "Odd is greater than Even"
# If the total of both even and odd numbers are identical return: "Even and Odd are the same"

# Solution
def even_or_odd(s)
  e = s.to_i.digits.reverse.partition { |e| e.to_i.even? }.map(&:sum)
  e[0] == e[1] ? "Even and Odd are the same" : e[0] > e[1] ? "Even is greater than Odd" : "Odd is greater than Even"
end


# Completed at : 2020-11-28T00:40:30.212Z
