# Codewars - Kata Solution (Ruby)
# I LOVE YOU A LITTLE  A LOT PASSIONATELY  NOT AT ALL (8 kyu)

# Instructions
# Who remembers back to their time in the schoolyard, when girls would take a flower and tear its petals, saying each of the following phrases each time a petal was torn:
# I love you
# a little
# a lot
# passionately
# madly
# not at all
# When the last petal was torn there were cries of excitement, dreams, surging thoughts and emotions.
# Your goal in this kata is to determine which phrase the girls would say for a flower of a given number of petals, where nb_petals > 0.

# Solution
def how_much_i_love_you(nb_petals)
  case nb_petals % 6
    when 1 then 'I love you'
    when 2 then 'a little'
    when 3 then 'a lot'
    when 4 then 'passionately'
    when 5 then 'madly'
    when 0 then 'not at all'
  end
end


# Completed at : 2020-10-30T03:13:29.248Z
