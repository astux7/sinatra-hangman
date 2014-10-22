require 'sinatra'
require 'rack-flash'
require 'sinatra/partial'

# require_relative 'models/link' # this needs to be done after datamapper is initialised
# require_relative 'models/tag'
# require_relative 'models/user'
# require_relative 'helpers/application'

# require_relative 'controllers/users'
# require_relative 'controllers/sessions'
# require_relative 'controllers/links'
# require_relative 'controllers/tags'
 require_relative 'controllers/application'

#use Rack::Flash

set :partial_template_engine, :erb
set :public_folder, 'public'
set :static, true