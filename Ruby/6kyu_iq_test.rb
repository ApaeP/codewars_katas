# Codewars - Kata Solution (Ruby)
# IQ TEST (6 kyu)

# Instructions
# Bob is preparing to pass IQ test. The most frequent task in this test is to find out which one of the given numbers differs from the others. Bob observed that one number usually differs from the others in evenness. Help Bob — to check his answers, he needs a program that among the given numbers finds one that is different in evenness, and return a position of this number.
# ! Keep in mind that your task is to help Bob solve a real IQ test, which means indexes of the elements start from 1 (not 0)
# ##Examples :
# iq_test("2 4 7 8 10") => 3 // Third number is odd, while the rest of the numbers are even

# iq_test("1 2 1 1") => 2 // Second number is even, while the rest of the numbers are odd

# Solution
def iq_test(numbers)
  odd = 0
  even = 0
  youpi = 0
  numbers.split.each { |num| num.to_i.odd? ? odd += 1 : even += 1 }
  if odd == 1
    numbers.split.each_with_index { |num, i| num.to_i.odd? ? youpi = i+1 : "non" }
  else
    numbers.split.each_with_index { |num, i| num.to_i.even? ? youpi = i+1 : "non" }
  end
  youpi
end
