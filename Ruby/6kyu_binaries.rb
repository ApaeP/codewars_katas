# Codewars - Kata Solution (Ruby)
# BINARIES (6 kyu)

# Instructions
# Let us take a string composed of decimal digits: "10111213". We want to code this string as a string of 0 and 1 and after that be able to decode it.
# To code we decompose the given string in its decimal digits (in the above example: 1 0 1 1 1 2 1 3) and we will code each digit.
# Coding process to code a number n expressed in base 10:
# For each digit d of n
# a) Let k be the number of bits of d
# b) Write k-1 times the digit 0 followed by the digit 1
# c) Write digit d as a binary string, with the rightmost bit being the least significant
# d) Concat the result of b) and c) to get the coding of d
# At last concatenate all the results got for the digits of n.
# An example
# So we code 0 as 10, 1 as 11, 2 as 0110, 3 as 0111 ... etc...
# With the given process, the initial string "10111213" becomes: "11101111110110110111" resulting of concatenation of 11 10 11 11 11 0110 11 0111.
# Task:
# Given strng a string of digits representing a decimal number the function code(strng) should return the coding of strng as explained above.
# Given a string strng resulting from the previous coding, decode it to get the corresponding decimal string.
# Examples:
# code("77338855") --> "001111001111011101110001100000011000001101001101"
# code("77338")  --> "0011110011110111011100011000"
# code("0011121314") --> "1010111111011011011111001100"

# decode("001111001111011101110001100000011000001101001101") -> "77338855"
# decode("0011110011110111011100011000") -> "77338"
# decode("1010111111011011011111001100") -> "0011121314"
# Notes
# SHELL: The only tested function is decode.
# Please could you ask before translating.

# Solution
def code(x)
  p x.chars.map { |e| ("0" * ((r = e.to_i.to_s(2)).length - 1)) + "1" + r }.join
end

def decode(x)
  # worst function ever, i'm tired
  length = 1
  n_index = []
  i_start_n = 0
  i_end_n = -1
  x.chars.each_with_index do |char, index|
    next if index <= i_end_n
    
    if char == '0'
      length += 1
    else
      i_end_n = index + length
      start_i = (i_end_n - i_start_n) / 2 + i_start_n + 1
      n_index << [x[start_i..i_end_n].to_i(2)]
      i_start_n = i_end_n + 1
      length = 1
    end
  end
  n_index.join
end


# Completed at : 2021-04-24 00:47:03 +0200
