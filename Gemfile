source 'https://rubygems.org'

#gem 'mysql2', '~>0.3.18'
gem 'mysql2'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.2'
gem 'bootstrap-sass', '~>3.3.1'
#gem 'sass-rails', github: 'rails/sass-rails'
gem 'autoprefixer-rails'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '5.0.2'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '2.5.3'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'paper_trail'

gem 'compass'
gem 'compass-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails', '4.0.3'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '2.3.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '2.2.3'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
gem 'unicorn'
gem 'sidekiq'
gem 'redis-namespace'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'capistrano'
gem 'capistrano-rails'
gem 'capistrano-rvm'
gem 'capistrano-rbenv'

#Generates attr_accessors that transparently encrypt and decrypt attributes.
gem 'attr_encrypted', "~>3.0.0"

gem 'sprockets', '3.6.3'

gem 'haml'
group :development, :test do
  # Call 'debugger' anywhere in the code to stop execution and get a debugger console
  gem 'sqlite3'
  gem 'byebug',      '3.4.0'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '2.0.0.beta3'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'pry'
  gem 'pry-byebug'
end

group :test do
 # gem 'minitest-reporters', '1.0.5'
 # gem 'mini_backtrace', '0.1.3'
 # gem 'guard-minitest', '2.3.1'
  gem 'rspec-rails', '~> 3.5'

  gem 'rspec-sidekiq', git: "https://github.com/philostler/rspec-sidekiq", branch: "develop"
  gem 'webmock'
  # Collection of testing matchers extracted from Shoulda
  gem 'shoulda-matchers'
  # Acceptance test framework for web applications
  gem 'capybara'
  # A PhantomJS driver for Capybara
  gem 'poltergeist'
  # Raises an error when you use a capybara finder and it times out.
  gem 'capybara-slow_finder_errors'

  # http://www.rubydoc.info/gems/factory_girl/file/GETTING_STARTED.md
  gem "factory_girl_rails", "~> 4.0"
  gem "database_cleaner"
  gem 'simplecov', :require => false
  gem 'rubocop', :require => false
  gem 'rubycritic', :require => false
  gem 'rails_best_practices', :require => false

end

group :production do
  #gem 'pg', '0.17.1'
  #gem 'rails_12factor', '0.0.2'
end

