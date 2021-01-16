# Codewars - Kata Solution (Ruby)
# MONKEY TALK (6 kyu)

# Instructions
# Lets talk like a monkey. Find out how! Look at the test cases an engineer code to pass them.

# Solution
def monkey_talk(st)
  st.split.map { |e| %w(a e i o u).include?(e.downcase[0]) ? "eek" : "ook" }.join(' ').capitalize + "."
end


# Completed at : 2021-01-16 17:19:45 +0100
