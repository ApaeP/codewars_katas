# Codewars - Kata Solution (Ruby)
# FIND THE DIFFERENCE IN AGE BETWEEN OLDEST AND YOUNGEST FAMILY MEMBERS (8 kyu)

# Instructions
# At the annual family gathering, the family likes to find the oldest living family member’s age and the youngest family member’s age and calculate the difference between them.
# You will be given an array of all the family members' ages, in any order. The ages will be given in whole numbers, so a baby of 5 months, will have an ascribed ‘age’ of 0. Return a new array (a tuple in Python) with [youngest age, oldest age, difference between the youngest and oldest age].

# Solution
def difference_in_ages(ages)
  [ages.min, ages.max, ages.max - ages.min]
end


# Completed at : 2020-10-29T23:51:28.978Z
