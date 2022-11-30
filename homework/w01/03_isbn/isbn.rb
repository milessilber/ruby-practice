def isbn_verify?(isbn_string)

  isbn_array = isbn_string.split("")
  isbn_array.delete("-")
  return false if isbn_array.length != 10

  if isbn_array[-1] == "X"
    isbn_array[-1] = "10"
  end



  isbn_array.map!{ |integer| integer.to_i }

  i = 0
  reverse = 10
  total_sum = 0

  while i < isbn_array.length
    total_sum += isbn_array[i] * reverse
    i += 1
    if reverse > 0
      reverse -= 1
    end
  end

  if total_sum % 11 == 0
    return true
  else
    return false
  end
end

puts isbn_verify?("0-8621-4366-7")


