get "/guess" do
  clean_flash
  erb :game
end

post "/guess" do
  clean_flash
  form do
    filters :strip, :downcase
    field :guess, :present => true, :length => 1..20
  end

  if form.failed?
    flash[:errors] = "Not valid guess!"
  else
    guess = params[:guess].downcase
    @blanket_view = send_question(guess) unless guess.nil?
    if game_finished?
      session[:answer_show] = finished_game
      if won?
        flash[:notice] = "You Won!"
      else
        flash[:errors] = "You Loose!"
      end
      redirect to("/game_end?finished")
    end
    answer_message(guess)
  end
  erb :game
end

get "/game_end" do
  if params.has_key?("giveup")
    clean_flash
    flash[:errors] = "You Gave up!"
  end
  session[:answer_show] = finished_game
  erb :game_over
end