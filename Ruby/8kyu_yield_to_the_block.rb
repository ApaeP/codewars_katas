# Codewars - Kata Solution (Ruby)
# YIELD TO THE BLOCK (8 kyu)

# Instructions
# Complete the Compute method/function so that if a block is given it will run else it returns "Do not compute".

# Solution
def compute 
  block_given? ? yield : 'Do not compute'
end


# Completed at : 2020-10-30T03:03:06.874Z
