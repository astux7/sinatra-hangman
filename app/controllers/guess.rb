get "/guess" do
  erb :game
end

post "/guess" do
  @message = ""
  guess = params[:guess]
  unless  guess.nil?
    @blanket_view = send_question(params[:guess])

   
  end
  if game_finished?
      #redirect
      session[:answer_show] = finished_game
     
      redirect to("/game_end?finished")
  end
  erb :game
end

get "/game_end" do
 session[:answer_show] = finished_game
 
 erb :properties
end