# Codewars - Kata Solution (Ruby)
# CHECK THE EXAM (8 kyu)

# Instructions
# The first input array is the key to the correct answers to an exam, like ["a", "a", "b", "d"]. The second one contains a student's submitted answers.
# The two arrays are not empty and are the same length. Return the score for this array of answers, giving +4 for each correct answer, -1 for each incorrect answer, and +0 for each blank answer, represented as an empty string (in C the space character is used).
# If the score < 0, return 0.
# For example:
# checkExam(["a", "a", "b", "b"], ["a", "c", "b", "d"]) → 6
# checkExam(["a", "a", "c", "b"], ["a", "a", "b",  ""]) → 7
# checkExam(["a", "a", "b", "c"], ["a", "a", "b", "c"]) → 16
# checkExam(["b", "c", "b", "a"], ["",  "a", "a", "c"]) → 0

# Solution
def check_exam(c,s)
  x = s.map.with_index { |e, i| e == '' ? 0 : (e == c[i] ? 4 : -1) }.sum
  x.positive? ? x : 0
end
def check_exam(c,s)
   x = s.map.with_index { |e, i| e == '' ? 0 : (e == c[i] ? 4 : -1) }.sum
  x.positive? ? x : 0
end


# Completed at : 2020-10-29T01:16:10.909Z
