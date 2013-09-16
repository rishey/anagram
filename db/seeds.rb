file = open("app/words.txt")
file.each do |word|
  Word.create(word: word.chomp)
end


