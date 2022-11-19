def bob_responds(sentence)
  sentence = sentence.strip

  if sentence[-1] == "."
    puts "sounds good."
  elsif sentence[-1] == "!"
    puts "Woah, chill out!"
  elsif sentence[0..-1] == sentence[0..-1].upcase && sentence[-1] == "?"
    puts "Calm down, I know what im doing!"
  elsif sentence[-1] == "?"
    puts "Sure."
  elsif sentence.strip.empty?
    puts "Fine, be that way."
  elsif sentence[0..-1] == sentence[0..-1].upcase && sentence.match(/^[[:alpha:]]+$/)
    puts "Why are you yelling at me?"
  else
    puts "Whatever."
  end

end

bob_responds(" 412748 ")

