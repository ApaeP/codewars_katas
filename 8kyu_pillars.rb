# Codewars - Kata Solution (Ruby)
# PILLARS (8 kyu)

# Instructions
# There are pillars near the road. The distance between the pillars is the same and the width of the pillars is the same. Your function accepts three arguments:
# number of pillars (≥ 1);
# distance between pillars (10 - 30 meters);
# width of the pillar (10 - 50 centimeters).
# Calculate the distance between the first and the last pillar in centimeters (without the width of the first and last pillar).

# Solution
def pillars(num_of_pillars, distance, width)
  [((distance*100 + width) * (num_of_pillars - 1) - width), 0].max
end


# Completed at : 2020-11-03T03:34:30.481Z
