require 'sinatra'
require 'sinatra/reloader'
require 'rack-flash'
require 'sinatra/partial'
require 'sinatra/formkeeper'
require 'json'

require_relative 'models/answer' # this needs to be done after datamapper is initialised
require_relative 'models/blanket'
require_relative 'models/hangman'
require_relative 'models/slack_result'
#Configure allows you to share things across server into the controllers
#It's like top level app settings and config
configure do
 # @@hangman = Hangman.new
  #@@hangman.new_blanket
end


# require_relativegm 'controllers/users''
require_relative 'controllers/controller_library'
include ControllerLibrary
#controllers api
require_relative 'controllers/api/guess'

#=====================
require_relative 'controllers/application'
require_relative 'controllers/game_level'
require_relative 'controllers/guess'
require_relative 'controllers/answer'

require_relative 'helpers/application'


use Rack::Flash
enable :sessions
set :partial_template_engine, :erb
set :public_folder, 'public'
set :static, true
set :session_secret, "secure cookie"
set :json_content_type, :js