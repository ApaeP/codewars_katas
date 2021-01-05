# Codewars - Kata Solution (Ruby)
# HOW DO I COMPARE NUMBERS (8 kyu)

# Instructions
# What could be easier than comparing integer numbers? However, the given piece of code doesn't recognize some of the special numbers for a reason to be found. Your task is to find the bug and eliminate it.

# Solution
def what_is(x)
  if x == 42
    'everything'
  elsif x == 42 ** 42
    'everything everythinged'
  else
    'nothing'
  end
end


# Completed at : 2020-10-29T02:37:09.318Z
