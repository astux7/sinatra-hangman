require 'sinatra'
require 'rack-flash'
require 'sinatra/partial'

 require_relative 'models/answer' # this needs to be done after datamapper is initialised
 require_relative 'models/blanket'
 require_relative 'models/hangman'
# require_relative 'helpers/application'

# require_relative 'controllers/users''
require_relative 'controllers/application'
require_relative 'controllers/guess'
# use Rack::Flash
# enable :sessions
set :partial_template_engine, :erb
set :public_folder, 'public'
set :static, true
@hangman = Hangman.new