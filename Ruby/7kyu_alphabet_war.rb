# Codewars - Kata Solution (Ruby)
# ALPHABET WAR (7 kyu)

# Instructions
# Introduction
# There is a war and nobody knows - the alphabet war!
# There are two groups of hostile letters. The tension between left side letters and right side letters was too high and the war began.
# Task
# Write a function that accepts fight string consists of only small letters and return who wins the fight. When the left side wins return Left side wins!, when the right side wins return Right side wins!, in other case return Let's fight again!.
# The left side letters and their power:
#  w - 4
#  p - 3
#  b - 2
#  s - 1
# The right side letters and their power:
#  m - 4
#  q - 3
#  d - 2
#  z - 1
# The other letters don't have power and are only victims.
# Example
# AlphabetWar("z");        //=> Right side wins!
# AlphabetWar("zdqmwpbs"); //=> Let's fight again!
# AlphabetWar("zzzzs");    //=> Right side wins!
# AlphabetWar("wwwwwwz");  //=> Left side wins!
# Alphabet war Collection
# Alphavet war
# Alphabet war - airstrike - letters massacre
# Alphabet wars - reinforces massacre
# Alphabet wars - nuclear strike
# Alphabet war - Wo lo loooooo priests join the war

# Solution
VAL = {"w"=>4, "p"=>3, "b"=>2, "s"=>1, "m"=>4, "q"=>3, "d"=>2, "z"=>1}
def alphabet_war(fight)
  (scores = fight.gsub(/[^wpbsmqdz]+/, '').chars.partition { |x| %w(w p b s).include?(x) }.map { |e| e.map { |x| VAL[x] }.sum })[0] == scores[1] ? "Let's fight again!" : scores[0] > scores[1] ? "Left side wins!" : "Right side wins!"
end


# Completed at : 2021-01-31 02:56:10 +0100
