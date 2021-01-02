# Codewars - Kata Solution (Ruby)
# ORING ARRAYS (7 kyu)

# Instructions
# It started as a discussion with a friend, who didn't fully grasp some way of setting defaults, but I thought the idea was cool enough for a beginner kata: binary OR each matching element of two given arrays (or lists, if you do it in Python; vectors in c++) of integers and give the resulting ORed array [starts to sound like a tonguetwister, doesn't it?].
# If one array is shorter than the other, use the optional third parameter (defaulted to 0) to OR the unmatched elements.
# For example:
# or_arrays([1,2,3],[1,2,3]) == [1,2,3]
# or_arrays([1,2,3],[4,5,6]) == [5,7,7]
# or_arrays([1,2,3],[1,2]) == [1,2,3]
# or_arrays([1,2],[1,2,3]) == [1,2,3]
# or_arrays([1,2,3],[1,2,3],3) == [1,2,3]

# Solution
def or_arrays(a1, a2, opt = 0)
  a = [a1, a2].sort_by(&:size)
  a.last.zip(a.first).map { |e| e[1].nil? ? e[0] | opt : e[0] | e[1] }
end


# Completed at : 2020-12-26T14:08:32.253Z
