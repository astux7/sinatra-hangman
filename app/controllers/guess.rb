get "/guess" do
  clean_flash
  erb :game
end

post "/guess" do
  clean_flash
  guess = params[:guess]
  @blanket_view = send_question(guess) unless guess.nil?
  if game_finished?
    session[:answer_show] = finished_game
    flash[:notice] = "You Won!"
    redirect to("/game_end?finished")
  end
  answer_message(guess)
  erb :game
end

get "/game_end" do
  if params.has_key?("giveup")
    clean_flash
    flash[:errors] = ["You Gave up!"] 
  end
  session[:answer_show] = finished_game
  erb :properties
end