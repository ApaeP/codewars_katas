# Codewars - Kata Solution (Ruby)
# WILSON PRIMES (8 kyu)

# Instructions
# Wilson primes satisfy the following condition. Let P represent a prime number.
# Then ((P-1)! + 1) / (P * P) should give a whole number.
# Your task is to create a function that returns true if the given number is a Wilson prime.

# Solution
class Integer
  def fact
    (1..self).reduce(:*) || 1
  end
end

def am_I_Wilson(i)
  #((i-1).fact + 1) % (i * i) == 0
  [5, 13, 563].include?(i)
end


# Completed at : 2020-11-01T20:12:23.464Z
