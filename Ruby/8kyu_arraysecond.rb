# Codewars - Kata Solution (Ruby)
# ARRAYSECOND (8 kyu)

# Instructions
# Define a new instance method on the Array class called second, which returns the second item in an array (similar to the way .first and .last work in Ruby).
# If there is no element with index 1 in the array, return nil.
# Examples
# [3, 4, 5].second  #  => 4 
# [].second         #  => nil

# Solution
class Array
  def second
    self[1]
  end
end


# Completed at : 2020-11-21T19:19:44.155Z
