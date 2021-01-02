# Codewars - Kata Solution (Ruby)
# DESCRIBE THE SHAPE (7 kyu)

# Instructions
# You will be given the number of angles of a shape with equal sides and angles, and you need to return the number of its sides, and the measure of the interior angles.
# Should the number be equal or less than 2, return:
# "this will be a line segment or a dot"
# Otherwise return the result in the following format:
# "This shape has s sides and each angle measures d"
# (replace s with number of sides and d with the measure of the interior angles).
# Angle measure should be floored to the nearest integer.
# Number of sides will be tested from 0 to 180.
# Have Fun!

# Solution
def describe_the_shape(a)
  a > 2 ? "This shape has #{a} sides and each angle measures #{((a - 2) * 180) / a}" : "this will be a line segment or a dot"
end


# Completed at : 2020-12-30T18:49:36.283Z
