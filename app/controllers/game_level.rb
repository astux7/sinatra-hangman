get '/game_level' do
  @message = ""
  if params[:level].nil?
    erb :difficulty
  else
    @@hangman.change_level(params[:level].to_sym)
    erb :game
  end
end
