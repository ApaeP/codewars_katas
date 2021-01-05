# Codewars - Kata Solution (Ruby)
# INCORRECT ARRAY_REMOVE METHOD (8 kyu)

# Instructions
# You come across a method for removing all odd numbers from an array #removing all odd numbers from an array
# def remove_odd_numbers_from_array(a)
#   a.each do |x|
#       if x%2!=0
#           a.delete x
#       end
#   end
#   return a
# end

# This method does not work as expected. Can you correct it

# Solution
#removing all odd numbers from an array
def remove_odd_numbers_from_array(a)
  a.reject { |x| x.odd? }
end


# Completed at : 2020-11-21T17:29:33.650Z
