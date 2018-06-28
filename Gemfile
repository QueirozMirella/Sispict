# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'therubyracer', platforms: :ruby
gem 'turbolinks', '~> 5'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'
gem 'devise'
gem 'rails-i18n', '~> 5.0.0' # For 5.0.x and 5.1.x
gem 'jquery-turbolinks'
gem 'carrierwave', '~> 1.0'
gem 'gentelella-rails'
gem 'rolify'
gem 'pundit'
gem 'listen', '~> 3.0.5'
gem 'bootstrap-datepicker-rails'
gem 'cocoon'
gem 'sass-rails', '>= 3.2'
gem 'jquery-easing-rails'
gem 'rails-assets-notifyjs', source: 'https://rails-assets.org'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'pry-rails', group: :development
  gem 'shoulda-matchers'
  gem 'vcr'
  gem 'spring-commands-rspec'
  # A library for generating fake data such as names, addresses, and phone numbers.
  gem 'faker'
  gem 'rails-controller-testing'
end

group :test do
  gem 'database_cleaner'
  gem 'simplecov', require: false, group: :test
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'brakeman', require: false
  gem 'rails_best_practices'
  gem 'rubocop', require: false
  gem 'rubycritic', require: false
  gem 'capistrano',         require: false
  gem 'capistrano-rvm',     require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false
  gem 'rails-erd'
end

group :production do
  gem 'better_errors'
  gem 'binding_of_caller'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
