# Codewars - Kata Solution (Ruby)
# PLAYING WITH CUBES I (8 kyu)

# Instructions
# Create a public class called Cube without a constructor which gets one single private integer variable Side, a getter GetSide() and a setter SetSide(int num) method for this property. Actually, getter and setter methods are not the common way to write this code in C#. In the next kata of this series, we gonna refactor the code and make it a bit more professional...
# Notes:
# There's no need to check for negative values!
# initialise the side to 0.

# Solution
class Module  
  def bypass_init
    define_method('get_side') do
      instance_variable_defined?("@side") ? instance_variable_get("@side") : instance_variable_set("@side", 0)
    end    
    define_method('set_side') do |val|
      instance_variable_set("@side", val)
    end
  end
end

class Cube
  bypass_init
end
class Cube
  def get_side
    @side || 0
  end
  
  def set_side(n)
    @side = n
  end
end


# Completed at : 2020-11-03T02:14:22.692Z
