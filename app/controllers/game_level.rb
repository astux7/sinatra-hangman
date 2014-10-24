get '/game_level' do
  clean_flash
  unless params[:level].nil?
    hangman_setup(params[:level])
    @blanket_view = hangman_start(params[:level].to_sym)
    redirect to('/guess')
  end
  erb :difficulty
end
