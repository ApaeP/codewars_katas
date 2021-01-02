# Codewars - Kata Solution (Ruby)
# SQUASH THE BUGS (8 kyu)

# Instructions
# Simple challenge - eliminate all bugs from the supplied code so that the code runs and outputs the expected value. Output should be the length of the longest word, as a number.
# There will only be one 'longest' word.

# Solution
def find_longest(str)
  spl = str.split(" ")
  longest = 0
  i=0
  while (i < spl.length)
    longest = spl[i].length if (spl[i].length > longest)
    i += 1
  end
  return longest
end
def find_longest(string)
  string.split(' ').map(&:length).max
end


# Completed at : 2020-10-30T00:48:40.881Z
