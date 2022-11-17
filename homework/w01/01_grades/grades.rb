def final_grade(array)

  return "I" if array.length == 0

  sum = 0
  array.each { |num| sum += num }
  avg = (sum / array.length).round()

  if avg >= 90.0
    return "A"
  elsif avg >= 80.0
    return "B"
  elsif avg >= 70.0
    return "C"
  elsif avg >= 60.0
    return "D"
  elsif avg <= 59.9
    return "F"
  end

end

array = [1, 2, 3]
print final_grade(array)
