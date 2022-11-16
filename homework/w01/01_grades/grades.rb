def final_grade(array)
  sum = 0
  array.each { |num| sum += num }
  avg = sum / array.length

  if avg >= 90.0
    grade = "A"
  elsif avg >= 80.0
    grade = "B"
  elsif avg >= 70.0
    grade = "C"
  elsif avg >= 60.0
    grade = "D"
  else 
    grade = "F"
  end
  puts grade
  return grade
end

array = [95.0, 92.0, 80.0, 90.0, 0]
print final_grade(array)
  