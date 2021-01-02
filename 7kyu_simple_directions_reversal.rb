# Codewars - Kata Solution (Ruby)
# SIMPLE DIRECTIONS REVERSAL (7 kyu)

# Instructions
# In this Kata, you will be given directions and your task will be to find your way back.
# solve(["Begin on Road A","Right on Road B","Right on Road C","Left on Road D"]) = ['Begin on Road D', 'Right on Road C', 'Left on Road B', 'Left on Road A']
# solve(['Begin on Lua Pkwy', 'Right on Sixth Alley', 'Right on 1st Cr']) =  ['Begin on 1st Cr', 'Left on Sixth Alley', 'Left on Lua Pkwy']
# More examples in test cases.
# Good luck!
# Please also try Simple remove duplicates

# Solution
def solve arr
  directions = (arr.map { |e| e.split[0] == 'Right' ? 'Left' : 'Right' }[1..-1] << 'Begin' ).reverse
  locations = arr.map { |e| e.split[2..-1].join(' ') }.reverse
  directions.zip(locations).map { |e| e.join(' on ') }.flatten
end


# Completed at : 2020-11-23T04:40:38.691Z
