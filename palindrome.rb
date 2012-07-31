def palindrome?(word)
  word.gsub!(/(\W|\d|\s+)/, "")
  print "is '#{word}' a palindrome: "
  return word.downcase == word.reverse.downcase
end
puts palindrome?("wonderboy");
puts palindrome?("P/;.  P")
