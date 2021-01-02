# Codewars - Kata Solution (Ruby)
# FIND THE ODD INT (6 kyu)

# Instructions
# Given an array of integers, find the one that appears an odd number of times.
# There will always be only one integer that appears an odd number of times.

# Solution
def find_it(seq)
  hsh = {}
  seq.each { |n| hsh[n] ? hsh[n] += 1 :  hsh[n] = 1 }
  hsh.each { |n, i| return n if i.odd? }
end
def find_it(seq)
  seq.detect { |n| seq.count(n).odd? }
end
