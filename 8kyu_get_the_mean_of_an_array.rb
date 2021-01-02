# Codewars - Kata Solution (Ruby)
# GET THE MEAN OF AN ARRAY (8 kyu)

# Instructions
# It's the academic year's end, fateful moment of your school report. The averages must be calculated. All the students come to you and entreat you to calculate their average for them. Easy ! You just need to write a script.
# Return the average of the given array rounded down to its nearest integer.
# The array will never be empty.

# Solution
def get_average(marks)
  marks.sum.fdiv(marks.size).floor
end


# Completed at : 2020-10-28T23:52:00.564Z
