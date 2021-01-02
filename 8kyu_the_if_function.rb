# Codewars - Kata Solution (Ruby)
# THE IF FUNCTION (8 kyu)

# Instructions
# Create a function called _if which takes 3 arguments: a boolean value bool and 2 functions (which do not take any parameters): func1 and func2
# When bool is truth-ish, func1 should be called, otherwise call the func2.
# Example:
# _if(true, proc{puts "True"}, proc{puts "False"})
# # Logs 'True' to the console.

# Solution
def _if(bool, ifTrue, ifFalse)
  bool ? ifTrue.call : ifFalse.call
end


# Completed at : 2020-10-30T02:49:55.626Z
