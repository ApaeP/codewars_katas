# Codewars - Kata Solution (Ruby)
# FIND YOUR VILLAIN NAME (7 kyu)

# Instructions
# Create a function that returns a villain name based on the user's birthday. The birthday will be passed to the function as a valid Date object, so for simplicity, there's no need to worry about converting strings to dates.
# The first name will come from the month, and the last name will come from the last digit of the date:
# Month -> first name
# January -> "The Evil"
# February -> "The Vile"
# March -> "The Cruel"
# April -> "The Trashy"
# May -> "The Despicable"
# June -> "The Embarrassing"
# July -> "The Disreputable"
# August -> "The Atrocious"
# September -> "The Twirling"
# October -> "The Orange"
# November -> "The Terrifying"
# December -> "The Awkward"
# Last digit of date -> last name
# 0 -> "Mustache"
# 1 -> "Pickle"
# 2 -> "Hood Ornament"
# 3 -> "Raisin"
# 4 -> "Recycling Bin"
# 5 -> "Potato"
# 6 -> "Tomato"
# 7 -> "House Cat"
# 8 -> "Teaspoon"
# 9 -> "Laundry Basket"
# The returned value should be a string in the form of "First Name Last Name".
# For example, a birthday of November 18 would return "The Terrifying Teaspoon"

# Solution
M = { 1 => "The Evil", 2 => "The Vile", 3 => "The Cruel", 4 => "The Trashy", 5 => "The Despicable", 6 => "The Embarrassing", 7 => "The Disreputable", 8 => "The Atrocious", 9 => "The Twirling", 10 => "The Orange", 11 => "The Terrifying", 12 => "The Awkward" }
D = { 0 => "Mustache", 1 => "Pickle", 2 => "Hood Ornament", 3 => "Raisin", 4 => "Recycling Bin", 5 => "Potato", 6 => "Tomato", 7 => "House Cat", 8 => "Teaspoon", 9 => "Laundry Basket" }
def get_villain_name(b)
  "#{M[b.month]} #{D[b.day.digits.first]}"
end


# Completed at : 2020-12-09T02:59:14.078Z
