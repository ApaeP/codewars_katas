# Codewars - Kata Solution (Ruby)
# ODDSINDEX (7 kyu)

# Instructions
# You are given an array with several "even" words, one "odd" word, and some numbers mixed in.
# Determine if any of the numbers in the array is the index of the "odd" word. If so, return true, otherwise false.

# Solution
def oddball x
  (x - ['even', 'odd']).each { |e| return true if x[e] == 'odd'  }
  false
end


# Completed at : 2020-12-19T02:51:06.991Z
