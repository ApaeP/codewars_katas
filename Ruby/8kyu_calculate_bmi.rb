# Codewars - Kata Solution (Ruby)
# CALCULATE BMI (8 kyu)

# Instructions
# Write function bmi that calculates body mass index (bmi = weight / height ^ 2).
# if bmi <= 18.5 return "Underweight"
# if bmi <= 25.0 return "Normal"
# if bmi <= 30.0 return "Overweight"
# if bmi > 30 return "Obese"

# Solution
def bmi(weight, height)
  bmi = weight/height**2
  p bmi
  return 'Obese' if bmi > 30
  return 'Underweight' if bmi <= 18.5
  return 'Normal' if bmi <= 25
  return 'Overweight' if bmi <= 30
end


# Completed at : 2020-10-30T03:18:51.336Z
