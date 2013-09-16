class Word < ActiveRecord::Base
  def canonical(word)
  word.downcase.split('').sort
end
 
 
def is_anagram?(word1, word2)
  canonical(word1) == canonical(word2)
end
 
 
def anagrams_for(word, dictionary)
  ana_array = []
  dictionary.each do |dictionary_word|
    if canonical(dictionary_word) == canonical(word)
      ana_array.push(dictionary_word)
    end
  end
  ana_array
end
end
