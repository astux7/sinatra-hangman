get '/game_level' do
  @message = ""
  if params[:level].nil?
    erb :difficulty
  else
    @@hangman.change_level(:easy)
    erb :game
  end
end
