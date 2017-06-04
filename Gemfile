# frozen_string_literal: true
source 'https://rubygems.org'

ruby '2.4.1'

gem 'rails'

gem 'pg'

gem 'active_model_serializers'
gem 'gon'
gem 'slim-rails'

gem 'json', '~> 2'

gem 'coffee-rails'
gem 'compass-rails'
gem 'jquery-rails'
gem 'sass-rails'
gem 'uglifier'

gem 'devise'

gem 'factory_girl_rails', '~> 4.0'

gem 'omniauth', '1.3.1'
gem 'omniauth-google-oauth2', '0.4.1'

gem 'codequest_pipes'
gem 'money-rails'
gem 'pundit'

gem 'kaminari'
gem 'nokogiri'
gem 'premailer'
gem 'premailer-rails'
gem 'puma'
gem 'tilt-jade'

# error reporting
gem 'airbrake'

# queues
gem 'sidekiq'
gem 'sidekiq-scheduler'

# logging
gem 'multilogger', git: 'https://github.com/codequest-eu/multilogger'
gem 'remote_syslog_logger'

source 'https://rails-assets.org' do
  gem 'rails-assets-chosen'
  gem 'rails-assets-foundation'
  gem 'rails-assets-humanize-plus'
  gem 'rails-assets-marionette'
  gem 'rails-assets-moment'
  gem 'rails-assets-uri.js'
end

group :development, :test do
  gem 'faker', require: false
  gem 'inch'
  gem 'pry'
  gem 'reek'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'rubocop-rspec'
  gem 'scss_lint', require: false
  gem 'slim_lint'
end

group :development do
  gem 'binding_of_caller', '0.7.2'
  gem 'did-you-mean'
end

group :test do
  gem 'rails-controller-testing' # remove someday
  gem 'rake'
  gem 'shoulda-callback-matchers', require: false
  gem 'shoulda-matchers', require: false
  gem 'simplecov', require: false
end
