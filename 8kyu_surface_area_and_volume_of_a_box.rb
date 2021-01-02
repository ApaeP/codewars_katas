# Codewars - Kata Solution (Ruby)
# SURFACE AREA AND VOLUME OF A BOX (8 kyu)

# Instructions
# Write a function that returns the total surface area and volume of a box as an array: [area, volume]

# Solution
def get_size(w,h,d)
  [(2*w*h)+(2*h*d)+(2*d*w), w*h*d]
end


# Completed at : 2020-10-30T04:30:03.085Z
