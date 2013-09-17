class Word < ActiveRecord::Base
  
 
def self.anagrams_for(word)
  @source_word = word
  @sorted_source_word = word.chomp.downcase.split('').sort.join
  Word.select(:word).find_all_by_sorted_word(@sorted_source_word)
end


#   dictionary.each do |dictionary_word|
#     if canonical(dictionary_word) == canonical(word)
#       ana_array.push(dictionary_word)
#     end
#   end
#   ana_array
# end






end
