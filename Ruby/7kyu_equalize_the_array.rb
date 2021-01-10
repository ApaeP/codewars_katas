# Codewars - Kata Solution (Ruby)
# EQUALIZE THE ARRAY (7 kyu)

# Instructions
# No description!!!
# Input :: [10,20,25,0]
# Output :: ["+0", "+10", "+15", "-10"]
# Show some love, rank and upvote!

# Solution
def equalize(arr)
  arr.map { |e| (a = e - arr[0]) >= 0 ? "+#{a}" : a.to_s }
end


# Completed at : 2021-01-10 01:20:51 +0100
