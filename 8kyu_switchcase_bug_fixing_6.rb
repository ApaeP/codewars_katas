# Codewars - Kata Solution (Ruby)
# SWITCHCASE  BUG FIXING 6 (8 kyu)

# Instructions
# Switch/Case - Bug Fixing #6
# Oh no! Timmy's evalObject function doesn't work. He uses Switch/Cases to evaluate the given properties of an object, can you fix timmy's function?

# Solution
def eval_object(v)
  case v['operation']
    when "+" then v['a'] + v['b']
    when "-" then v['a'] - v['b']
    when "/" then v['a'] / v['b']
    when "*" then v['a'] * v['b']
    when "%" then v['a'] % v['b']
    when "**" then v['a'] ** v['b']
    else return nil
  end
end


# Completed at : 2020-11-21T19:05:32.177Z
