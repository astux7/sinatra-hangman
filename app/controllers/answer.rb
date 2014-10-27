get '/answer' do
  clean_flash
  erb :answer_form
end

post '/answer' do
  hangman_setup(params[:level])
 # hangman.my_word = params[:answer]
  @blanket_view = hangman_start(params[:level].to_sym,params[:answer])
  redirect to('/guess')
end