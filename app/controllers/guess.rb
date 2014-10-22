post "/guess" do
  guess =  params[:guess].to_s
  @message = ""
  @hangman.start
  @hangman.send_question(guess)

  if @hangman.lives_left < 18
    @message = "Incorrect"
   else
    @message = "Correct"
  end
end