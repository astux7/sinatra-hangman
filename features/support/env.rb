require 'capybara/cucumber'
require './app/server'

Capybara.app = Sinatra::Application
#Sinatra::Application.set :product_list, InMemoryProductList.new