get '/game_level' do

  #Sinatra::Application.set :hangman, hangman, new_hangman

  @message = ""
  if params[:level].nil?
    erb :difficulty
  else
    hangman_setup(params[:level])
    @blanket_view = hangman_start
    redirect to('/guess')
  end
end
