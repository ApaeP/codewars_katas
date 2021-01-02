# Codewars - Kata Solution (Ruby)
# FUSION CHAMBER SHUTDOWN (7 kyu)

# Instructions
# A laboratory is testing how atoms react in ionic state during nuclear fusion. They introduce different elements with Hydrogen in high temperature and pressurized chamber. Due to unknown reason the chamber lost its power and the elements in it started precipitating
# Given the number of atoms of Carbon [C],Hydrogen[H] and Oxygen[O] in the chamber. Calculate how many molecules of Water [H2O], Carbon Dioxide [CO2] and Methane [CH4] will be produced following the order of reaction affinity below
# 1. Hydrogen reacts with Oxygen   = H2O
# 2. Carbon   reacts with Oxygen   = CO2
# 3. Carbon   reacts with Hydrogen = CH4
# FOR EXAMPLE:
# (C,H,O) = (45,11,100)
# return no. of water, carbon dioxide and methane molecules
# Output should be like:
# (5,45,0)

# Solution
def burner(c, h, o)
  w, cd, m = 0, 0, 0
  (h / 2).times do
    unless o < 1
      w += 1
      o -= 1
      h -= 2
    end
  end
  (o / 2).times do
    unless c < 1
      cd += 1
      c -= 1
      o -= 2
    end
  end
  (h / 4).times do
    unless c < 1
      m += 1
      c -= 1
      h -= 4
    end
  end
  [w, cd, m]
end


# Completed at : 2020-12-30T19:41:42.670Z
