# require "sinatra/json"
# helpers Sinatra::JSON
post "/api/" do
  # @blanket_view = hangman_start(params[:level].to_sym)
  content_type :json
  @text = "" 
  # todo: remove skip auth when finished testing!
  @checker = SlackResult.new(indifferent_params(params), :skip_authentication)

#  p @result.user_name

  if @checker.user_name == 'slackbot' # 'outgoing-webhook'
    status 200  
    body ''
  else
    if @checker.command == "start"
      @text = hangman_start("easy")+"\n"+"Lives left: 18"
    elsif @checker.guess
      blanket = send_question(@checker.guess)
      @text = blanket  + lives_stat_output_api
    end
    { text: @text }.to_json
  end


   # erb :result, :layout => :api_layout
  # json({:foo => 'bar'}, :encoder => :to_json, :content_type => :js)
  #json({:result => @result}, :encoder => :to_json, :content_type => :js)
end

get "/api/" do
  @result = "working".to_json
  erb :result, :layout => :api_layout
end

get "/api/guess" do
  #erb :result, :layout => :api_layout
end
