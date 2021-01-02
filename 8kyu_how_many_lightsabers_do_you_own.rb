# Codewars - Kata Solution (Ruby)
# HOW MANY LIGHTSABERS DO YOU OWN (8 kyu)

# Instructions
# Inspired by the development team at Vooza, write the function howManyLightsabersDoYouOwn/how_many_light_sabers_do_you_own that
# accepts the name of a programmer, and
# returns the number of lightsabers owned by that person.
# The only person who owns lightsabers is Zach, by the way. He owns 18, which is an awesome number of lightsabers. Anyone else owns 0.
# Note: your function should have a default parameter.
# how_many_light_sabers_do_you_own('Zach') == 18
# how_many_light_sabers_do_you_own('Adam') == 0
# how_many_light_sabers_do_you_own()       == 0

# Solution
def how_many_light_sabers_do_you_own(name = '')
  name == 'Zach' ? 18 : 0
end


# Completed at : 2020-11-01T20:40:30.214Z
