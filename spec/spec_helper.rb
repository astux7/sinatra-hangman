require "./app/server"
require "capybara/rspec"

require "./app/models/slack_result"

Capybara.app = Sinatra::Application
#Capybara.javascript_driver = :poltergeist
Capybara.configure do |config|
  # config.run_server = false
  # config.default_driver = :poltergeist
  # config.app_host = 'http://localhost:9292'
end