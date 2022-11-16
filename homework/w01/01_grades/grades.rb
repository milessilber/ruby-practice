def final_grade(array)
num = [95.0, 92.0, 99.0, 88.0, 96.0] / 5


if num >= 90.0
  grade = "A"
elsif num >= 80.0
grade = "B"
elsif num >= 70.0
grade = "C"
elsif num >= 60.0
grade = "D"
else grade = "F"
end


return grade
end
