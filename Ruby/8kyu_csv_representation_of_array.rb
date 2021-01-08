# Codewars - Kata Solution (Ruby)
# CSV REPRESENTATION OF ARRAY (8 kyu)

# Instructions
# Create a function that returns the CSV representation of a two-dimensional numeric array.
# Example:
# input:
#    [[ 0, 1, 2, 3, 4 ],
#     [ 10,11,12,13,14 ],
#     [ 20,21,22,23,24 ],
#     [ 30,31,32,33,34 ]] 

# output:
#      '0,1,2,3,4\n'
#     +'10,11,12,13,14\n'
#     +'20,21,22,23,24\n'
#     +'30,31,32,33,34'
# Array's length > 2.
# More details here: https://en.wikipedia.org/wiki/Comma-separated_values

# Solution
def to_csv_text(arr)
  arr.map { |e| e.join(',') }.join("\n")
end


# Completed at : 2021-01-08 16:12:07 +0100
