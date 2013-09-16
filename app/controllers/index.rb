get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:word' do
 p "Show a list of anagrams for \"#{params[:word]}\""
end
