get "/guess" do
  erb :game
end

post "/guess" do
  @message = ""
  guess = params[:guess]
  unless  guess.nil?
    @blanket_view = send_question(params[:guess])

    if hangman.game_finished? 
      #redirect
      finished_game
    end
  end
  erb :game
end

post "/guess?giveup" do
  
  finished_game
  
  erb :game
end
