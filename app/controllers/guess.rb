get "/guess" do
 erb :game
end

post "/guess" do
  @message = ""
  guess =  params[:guess]
  @blanket_view = send_question(params[:guess])
  if lives_left < 18
    @message = "Incorrect"
   else
    @message = "Correct"
  end
  erb :game
end
