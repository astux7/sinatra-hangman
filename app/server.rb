require 'sinatra'
require 'rack-flash'
require 'sinatra/partial'

# require_relative 'models/link' # this needs to be done after datamapper is initialised
# require_relative 'helpers/application'

# require_relative 'controllers/users''
require_relative 'controllers/application'

# use Rack::Flash
# enable :sessions
set :partial_template_engine, :erb
set :public_folder, 'public'
set :static, true