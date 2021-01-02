# Codewars - Kata Solution (Ruby)
# RGB TO HEX CONVERSION (5 kyu)

# Instructions
# The rgb function is incomplete. Complete it so that passing in RGB decimal values will result in a hexadecimal representation being returned. Valid decimal values for RGB are 0 - 255. Any values that fall out of that range must be rounded to the closest valid value.
# Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.
# The following are examples of expected output values:
# rgb(255, 255, 255) # returns FFFFFF
# rgb(255, 255, 300) # returns FFFFFF
# rgb(0,0,0) # returns 000000
# rgb(148, 0, 211) # returns 9400D3

# Solution
def rgb(r, g, b)
  r, g, b = [r, g, b].map { |e| e < 0 ? "00" : e > 254 ? "FF" : e < 16 ? "0" + e.to_s(16).upcase : e.to_s(16).upcase }
  "#{r}#{g}#{b}"
end


# Completed at : 2021-01-02 22:41:16 +0100
