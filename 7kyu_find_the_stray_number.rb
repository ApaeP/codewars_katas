# Codewars - Kata Solution (Ruby)
# FIND THE STRAY NUMBER (7 kyu)

# Instructions
# You are given an odd-length array of integers, in which all of them are the same, except for one single number.
# Complete the method which accepts such an array, and returns that single different number.
# The input array will always be valid! (odd-length >= 3)
# Examples
# [1, 1, 2] ==> 2
# [17, 17, 3, 17, 17, 17, 17] ==> 3

# Solution
def stray (numbers)
  frequencies = Hash.new
  numbers.each { |numbr| frequencies[numbr.to_s.to_sym] ? frequencies[numbr.to_s.to_sym] += 1 : frequencies[numbr.to_s.to_sym] = 1 }
  frequencies.each do |key, value| 
    if value.odd? 
      return key.to_s.to_i
    end
  end  
end


# Completed at : 2019-12-22T21:56:42.191Z
