# Codewars - Kata Solution (Ruby)
# SORT NUMBERS (7 kyu)

# Instructions
# Finish the solution so that it sorts the passed in array of numbers. If the function passes in an empty array or null/nil value then it should return an empty array.
# For example:
# solution([1, 2, 10, 50, 5]) # should return [1,2,5,10,50]
# solution(nil) # should return []

# Solution
def solution(nums)
  nums.sort rescue []
end


# Completed at : 2020-11-23T05:02:48.700Z
