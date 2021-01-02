# Codewars - Kata Solution (Ruby)
# NUMBER TO DIGIT TIERS (7 kyu)

# Instructions
# Create a function that takes a number and returns an array of strings containing the number cut off at each digit.
# Examples
# 420 should return ["4", "42", "420"]
# 2017 should return ["2", "20", "201", "2017"]
# 2010 should return ["2", "20", "201", "2010"]
# 4020 should return ["4", "40", "402", "4020"]
# 80200 should return ["8", "80", "802", "8020", "80200"]
# PS: The input is guaranteed to be an integer in the range [0, 1000000]

# Solution
def create_array_of_tiers(num, s = [])
  num.digits.size.times do |i|
    s <<num.digits.reverse[0..i].join.to_s
  end
  s
end


# Completed at : 2021-01-02 17:26:44 +0100
