# Codewars - Kata Solution (Ruby)
# VALID PARENTHESES (5 kyu)

# Instructions
# Write a function called that takes a string of parentheses, and determines if the order of the parentheses is valid. The function should return true if the string is valid, and false if it's invalid.
# Examples
# "()"              =>  true
# ")(()))"          =>  false
# "("               =>  false
# "(())((()())())"  =>  true
# Constraints
# 0 <= input.length <= 100
# Along with opening (() and closing ()) parenthesis, input may contain any valid ASCII characters. Furthermore, the input string may be empty and/or not contain any parentheses at all. Do not treat other forms of brackets as parentheses (e.g. [], {}, <>).

# Solution
def valid_parentheses(str)
  str = str.gsub(/[^\(\)]/, '').chars
  until str.empty? 
    if (str[0] == '(' && str.count(')') > 0) then str = delete_parentheses(str) else return false end
  end
  return true if str == []
end

def delete_parentheses(arr)
  arr.delete_at(0) ; arr.delete_at(arr.index(')')) ; arr
end


# Completed at : 2021-01-07 01:35:29 +0100
