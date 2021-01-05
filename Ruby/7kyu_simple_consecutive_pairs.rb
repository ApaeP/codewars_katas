# Codewars - Kata Solution (Ruby)
# SIMPLE CONSECUTIVE PAIRS (7 kyu)

# Instructions
# In this Kata your task will be to return the count of pairs that have consecutive numbers as follows:
# pairs([1,2,5,8,-4,-3,7,6,5]) = 3
# The pairs are selected as follows [(1,2),(5,8),(-4,-3),(7,6),5]
# --the first pair is (1,2) and the numbers in the pair are consecutive; Count = 1
# --the second pair is (5,8) and are not consecutive
# --the third pair is (-4,-3), consecutive. Count = 2
# --the fourth pair is (7,6), also consecutive. Count = 3. 
# --the last digit has no pair, so we ignore.
# More examples in the test cases.
# Good luck!
# Please also try Simple time difference

# Solution
def pairs(a, c = 0)
  a.each_slice(2) { |e| c += 1 if e[1] - 1 == e[0] || e[1] + 1 == e[0] rescue next }
  c
end


# Completed at : 2020-12-17T04:00:53.396Z
