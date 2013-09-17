get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:word' do
  @words=[]
  @original_word = params[:word]
  @words = Word.anagrams_for(params[:word])
  # words.each do |word|
  #   @words << word.word
  # end
  erb :index
end
