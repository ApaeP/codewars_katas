# Codewars - Kata Solution (Ruby)
# CAT YEARS DOG YEARS (8 kyu)

# Instructions
# Kata Task
# I have a cat and a dog.
# I got them at the same time as kitten/puppy. That was humanYears years ago.
# Return their respective ages now as [humanYears,catYears,dogYears]
# NOTES:
# humanYears >= 1
# humanYears are whole numbers only
# Cat Years
# 15 cat years for first year
# +9 cat years for second year
# +4 cat years for each year after that
# Dog Years
# 15 dog years for first year
# +9 dog years for second year
# +5 dog years for each year after that
# References
# http://www.catster.com/cats-101/calculate-cat-age-in-cat-years
# http://www.slate.com/articles/news_and_politics/explainer/2009/05/a_dogs_life.html
# If you liked this Kata there is another related one here

# Solution
def human_years_cat_years_dog_years(human_years)
  human_years > 2 ? [human_years, 24+4*(human_years-2), 24+5*(human_years-2)] : human_years > 1 ? [2,24,24] : [1,15,15]
end    


# Completed at : 2020-11-03T14:42:20.029Z
