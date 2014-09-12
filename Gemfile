# Word Focus Chapel Gemfile
# Organization: Word Focus Chapel
# Author: Bode Fuwa
# Date: August 2014

# General
ruby '2.1.2'
gem 'rails', '~> 4.1.2'
gem 'bcrypt', '~> 3.1.7'
gem 'sprockets', '2.11.0'
gem 'jbuilder', '~> 1.2'
gem 'turbolinks'
gem 'jquery-rails'
gem 'coffee-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'sass-rails', '~> 4.0.2' # Use SCSS for stylesheets
gem 'net-ssh', '~>2.9.1'
gem 'will_paginate', '3.0.4'


# App specific

# Front end
# gem 'bootstrap-sass', '~> 2.3.2.0'
# gem 'bootstrap-will_paginate', '0.0.9'
gem 'foundation-rails'
# gem 'font-awesome-sass'
# gem 'font-awesome-rails'

# Middleware and Back end
gem 'devise'
gem 'carrierwave'
gem 'mini_magick', '~> 3.5.0'
gem 'acts-as-taggable-on'
# gem 'biblesearch-api', '1.1.0'

# production
group :production do
 gem 'mysql2'
 gem 'rails_12factor', '0.0.2'
 gem 'unicorn', '~> 4.8.0'
 # gem 'pg', '~> 0.17.1' 
 # gem 'redis', '~> 3.0.7'
end

# development
group :development, :test do
 gem 'sqlite3' # Use sqlite3 as the database for Active Record
 gem 'rspec-rails', '~> 2.13.1'
 gem 'capistrano', '~> 3.1.0'
 gem 'capistrano-rails', '~> 1.1.1'
 gem 'capistrano-bundler', '~> 1.1.1'
 gem 'capistrano-rbenv', '~> 2.0.2' 
 gem 'faker', '1.1.2'
end
   
# test
group :test do
 gem 'selenium-webdriver', '~> 2.35.1'
 gem 'capybara', '~> 2.1.0'
 gem 'cucumber-rails', '1.4.0', :require => false
 gem 'factory_girl_rails', '~> 4.2.0'
 # gem 'database_cleaner'
end

# doc
group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Gem inventory
# gem 'therubyracer', platforms: :ruby
