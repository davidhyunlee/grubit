source 'https://rubygems.org'
ruby '2.2.1'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

## OAuth Related Gems
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'omniauth-google-oauth2'
gem 'omniauth-instagram'

gem 'twitter'
gem 'instagram'

gem 'bootstrap-sass'

# Pagination
gem 'kaminari'
# Keeping stuff secret.
gem 'figaro'
# Using devise for user authentication.
gem 'devise'
# Using cancan for user authorization.
gem 'cancan'
# Using a gem to interface with Yelp API
gem 'yelp', require: 'yelp'

#gecoder and gmaps for the win
gem 'geocoder'
gem 'gmaps4rails'
gem 'active_model_serializers'
gem 'carrierwave'
gem 'fog'
gem 'mini_magick'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Using Pry instead of default Rails console for development.
  gem 'pry-rails'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '1.3.6'

  # rspec used for testing in development environment
  gem 'rspec-rails'

  # factory girl used for testing with factories
  gem 'factory_girl_rails'

  # Better error pages.
  gem 'better_errors'
  gem 'capybara'
end

group :production do
  gem 'rails_12factor'
  gem 'thin'
  # gem 'unicorn', '4.8.3'
end

