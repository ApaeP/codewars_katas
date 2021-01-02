# Codewars - Kata Solution (Ruby)
# CONSECUTIVE ITEMS (7 kyu)

# Instructions
# You are given a list of unique integers arr, and two integers a and b. Your task is to find out whether or not a and b appear consecutively in arr, and return a boolean value (True if a and b are consecutive, False otherwise).
# It is guaranteed that a and b are both present in arr.

# Solution
def consecutive(arr, a, b)
  arr.each_with_index { |e, i| return true if (e == a && arr[i + 1] == b) || (e == b && arr[i + 1] == a) rescue false }
  false
end


# Completed at : 2020-12-14T04:25:20.813Z
