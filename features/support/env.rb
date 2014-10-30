require 'capybara/cucumber'
require './app/server'

Capybara.app = Sinatra::Application
#Sinatra::Application.set :product_list, InMemoryProductList.new

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end