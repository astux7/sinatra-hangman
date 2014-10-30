# require "sinatra/json"
# helpers Sinatra::JSON
post "/api/" do
  # @blanket_view = hangman_start(params[:level].to_sym)
  @result = request.body.read

  content_type :json

  { text: "hello" }.to_json

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
