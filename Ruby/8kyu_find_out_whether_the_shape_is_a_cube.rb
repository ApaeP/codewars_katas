# Codewars - Kata Solution (Ruby)
# FIND OUT WHETHER THE SHAPE IS A CUBE (8 kyu)

# Instructions
# To find the volume (centimeters cubed) of a cuboid you use the formula:
# volume = Length * Width * Height
# But someone forgot to use proper record keeping, so we only have the volume, and the length of a single side!
# It's up to you to find out whether the cuboid has equal sides (= is a cube).
# Return true if the cuboid could have equal sides, return false otherwise.
# Return false for invalid numbers too (e.g volume or side is less than or equal to 0).
# Note: the sides must be integers

# Solution
def cube_checker(volume, side)
  return false if volume <= 0 || side <= 0
  side**3 == volume
end
def cube_checker(volume, side)
  volume == side**3 && volume.positive?
end


# Completed at : 2020-11-03T01:26:50.280Z
