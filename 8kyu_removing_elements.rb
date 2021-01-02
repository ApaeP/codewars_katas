# Codewars - Kata Solution (Ruby)
# REMOVING ELEMENTS (8 kyu)

# Instructions
# Take an array and remove every second element from the array. Always keep the first element and start removing with the next element.
# Example:
# my_arr = ['Keep', 'Remove', 'Keep', 'Remove', 'Keep', ...]
# None of the arrays will be empty, so you don't have to worry about that!

# Solution
def remove_every_other(arr)
  arr.select.with_index { |e, i| i.even? }
end


# Completed at : 2020-10-29T23:55:25.249Z
