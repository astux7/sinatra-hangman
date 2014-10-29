get '/' do
  clean_flash
  erb :index
end
get '/help' do
  clean_flash
  erb :index
end