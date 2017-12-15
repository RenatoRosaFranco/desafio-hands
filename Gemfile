source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  # Use shoulda to made tests mode understable
  gem 'shoulda'
  # Use selenium as webdriver
  gem 'selenium-webdriver'
  # Use rspec-rails as test-framework
  gem 'rspec-rails'
  # Use bootstrap-sass as bootstrap
  gem 'bootstrap-sass'
  # Use responders as respond-format
  gem 'responders'
  # Use angularjs-rails as angularjs 1x.
  gem 'angularjs-rails'
  # Use jquery-rails as jquery
  gem 'jquery-rails'
  # Use jquery-turbolinks to fix issues
  gem 'jquery-turbolinks'
  # Use active_model_serializers to serialize data
  gem 'active_model_serializers'
  # Use carrierwave as file uploader
  gem 'carrierwave'
  # Use devise as authentication
  gem 'devise'
  # Use pundit as authorization
  gem 'pundit'
  # Use faker to generate fake data
  gem 'ffaker'
  # Use factory_girl_rails to bulild factories
  gem 'factory_girl_rails'
  # Use database_cleaner to clean database
  gem 'database_cleaner'
  # Use pry-rails as pry-terminal
  # Use therubyracer as javascript plataform --if none nodejs
  # gem 'therubyracer'
  gem 'pry-rails'
  # Use pry-byebug as debugger
  gem 'pry-byebug'
  # Use awesome print to awesome code display
  gem 'awesome_print'
  # Use font-awesome-rails as fonts
  gem 'font-awesome-rails'
  # Use toastr-rails as notifications
  gem 'toastr-rails'
  # Use simplecov as code coverage
  gem 'simplecov'
  # Use rails_best_practices as best practices
  gem 'rails_best_practices'
  # Use better_errors as better_errors
  gem 'better_errors'
  # Use jasmeine as javascript test-framework
  gem 'jasmine'
  # Use rails-erd to generate pdf of MER architeture
  gem 'rails-erd'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
