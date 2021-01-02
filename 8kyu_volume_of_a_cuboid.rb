# Codewars - Kata Solution (Ruby)
# VOLUME OF A CUBOID (8 kyu)

# Instructions
# Bob needs a fast way to calculate the volume of a cuboid with three values: length, width and the height of the cuboid. Write a function to help Bob with this calculation.

# Solution
def get_volume_of_cuboid(*args)
  args.reduce(:*)
end


# Completed at : 2020-10-30T01:05:27.618Z
