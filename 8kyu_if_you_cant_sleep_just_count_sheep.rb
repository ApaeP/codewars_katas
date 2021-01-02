# Codewars - Kata Solution (Ruby)
# IF YOU CANT SLEEP JUST COUNT SHEEP (8 kyu)

# Instructions
# If you can't sleep, just count sheep!!
# Task:
# Given a non-negative integer, 3 for example, return a string with a murmur: "1 sheep...2 sheep...3 sheep...". Input will always be valid, i.e. no negative integers.

# Solution
def count_sheep(num)
  str = ''
  num.times { |n| str << "#{n+1} sheep..." }
  str
end
def count_sheep(num)
  (1..num).map { |i| "#{i} sheep..." }.join
end


# Completed at : 2020-11-03T01:10:40.112Z
