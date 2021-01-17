# Codewars - Kata Solution (Ruby)
# BUILD TOWER (6 kyu)

# Instructions
# Build Tower
# Build Tower by the following given argument:
# number of floors (integer and always greater than 0).
# Tower block is represented as *
# Python: return a list;
# JavaScript: returns an Array;
# C#: returns a string[];
# PHP: returns an array;
# C++: returns a vector<string>;
# Haskell: returns a [String];
# Ruby: returns an Array;
# Lua: returns a Table;
# Have fun!
# for example, a tower of 3 floors looks like below
# [
#   '  *  ', 
#   ' *** ', 
#   '*****'
# ]
# and a tower of 6 floors looks like below
# [
#   '     *     ', 
#   '    ***    ', 
#   '   *****   ', 
#   '  *******  ', 
#   ' ********* ', 
#   '***********'
# ]
# Go challenge Build Tower Advanced once you have finished this :)

# Solution
def towerBuilder(n)
  x=[1,2*n-1];Array.new(n).map{|e|w="#{' '*(x[1]/2)}#{'*'*x[0]}#{' '*(x[1]/2)}";x=[[2,-2],x].transpose.map{|x|x.reduce(:+)};w}
end


# Completed at : 2021-01-17 23:43:05 +0100
