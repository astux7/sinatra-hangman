require "./app/server"
require "capybara/rspec"
Capybara.app = Sinatra::Application
