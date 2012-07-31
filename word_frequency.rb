# Print out map of word frequency. Ignore non-words. 
# Compress multiple line spaces.
def count_words(string)
  string.gsub!(/(\W|\d)/, " ")
  string.gsub!(/\s+/, " ")
  puts(string)

  map = Hash.new
  stringAsArray = string.split(/ /)
  stringAsArray.each do |word|
    if map[word] == nil
      map[word] = 1
    else
      temp = map[word]
      map[word] = temp+1
    end
end
puts map
end

#testing
puts count_words("Hello there I said to to the the guy")
puts count_words("Would you,,,, bet me a quarter?")
puts count_words("I love, absolutely love to flop the nuts!")
