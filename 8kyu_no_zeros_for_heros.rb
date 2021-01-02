# Codewars - Kata Solution (Ruby)
# NO ZEROS FOR HEROS (8 kyu)

# Instructions
# Numbers ending with zeros are boring.
# They might be fun in your world, but not here.
# Get rid of them. Only the ending ones.
# 1450 -> 145
# 960000 -> 96
# 1050 -> 105
# -1050 -> -105
# Zero alone is fine, don't worry about it. Poor guy anyway

# Solution
def no_boring_zeros(num)
  return 0 if num == 0
  n = num.abs.digits.reverse
  n.pop while n.last == 0
  num < 0 ? n.unshift('-').join.to_i : n.join.to_i
end


# Completed at : 2020-10-30T00:40:15.964Z
