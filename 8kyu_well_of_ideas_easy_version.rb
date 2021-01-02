# Codewars - Kata Solution (Ruby)
# WELL OF IDEAS  EASY VERSION (8 kyu)

# Instructions
# For every good kata idea there seem to be quite a few bad ones!
# In this kata you need to check the provided array (x) for good ideas 'good' and bad ideas 'bad'. If there are one or two good ideas, return 'Publish!', if there are more than 2 return 'I smell a series!'. If there are no good ideas, as is often the case, return 'Fail!'.

# Solution
def well(x)
  n = x.count('good')
  p n
  if n == 1 || n == 2 then return 'Publish!'
  elsif n > 2 then return 'I smell a series!'
  else return 'Fail!'
  end
end


# Completed at : 2020-10-30T02:33:00.018Z
