# bundle init  - creates gemfile
# A sample Gemfile
source "https://rubygems.org"

# gem "rails"
ruby "2.1.3"
gem 'sinatra' # our web framework
gem 'shotgun' # for live code reloading
gem 'sinatra-partial'  #for split erb files to parts
gem 'rack-flash3' #for showing flash messages for user
gem 'sinatra-formkeeper' #for validate submitted forms

group :development, :test do
  gem "rspec"  #testing server side
  gem 'capybara'
  gem 'cucumber' #testing client side
  gem "poltergeist"
  gem "chromedriver-helper"
  gem "selenium-webdriver"
end