# require "sinatra/json"
# helpers Sinatra::JSON
post "/api/" do
  # @blanket_view = hangman_start(params[:level].to_sym)
  content_type :json

  # todo: remove skip auth when finished testing!
  @cheker = SlackResult.new(indifferent_params(params), :skip_authentication)

#  p @result.user_name

  if @cheker.user_name == 'slackbot' # 'outgoing-webhook'
    status 200  
    body ''
  else
    @text = hangman_start("easy")+"\n"+"Lives left: 18"
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
