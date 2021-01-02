# Codewars - Kata Solution (Ruby)
# DO I GET A BONUS (8 kyu)

# Instructions
# It's bonus time in the big city! The fatcats are rubbing their paws in anticipation... but who is going to make the most money?
# Build a function that takes in two arguments (salary, bonus). Salary will be an integer, and bonus a boolean.
# If bonus is true, the salary should be multiplied by 10. If bonus is false, the fatcat did not make enough money and must receive only his stated salary.
# Return the total figure the individual will receive as a string prefixed with "£" (= "\u00A3", JS, Go, and Java), "$" (C#, C++, Ruby, Clojure, Elixir, PHP and Python, Haskell, Lua) or "¥" (Rust).

# Solution
def bonus_time(salary, bonus)
  "$#{bonus ? salary * 10 : salary}"
end


# Completed at : 2020-10-30T02:51:31.483Z