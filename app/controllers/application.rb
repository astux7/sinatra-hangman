get '/' do
  erb :index
end

get '/newgame' do
  @message = ""
  
  erb :game
end

