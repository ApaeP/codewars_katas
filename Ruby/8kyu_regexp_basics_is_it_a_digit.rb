# Codewars - Kata Solution (Ruby)
# REGEXP BASICS  IS IT A DIGIT (8 kyu)

# Instructions
# Implement String#digit? (in Java StringUtils.isDigit(String)), which should return true if given object is a digit (0-9), false otherwise.

# Solution
class String
  def digit?
    (0..9).to_a.map(&:to_s).include?(self)
  end
end


# Completed at : 2020-10-30T02:56:03.877Z
