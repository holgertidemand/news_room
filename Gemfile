source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.5'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.7'
gem 'sass'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5'
gem 'devise'
gem 'omniauth-facebook', '~> 4.0'
gem 'pundit'
gem 'haml-rails'
gem 'stripe-rails', '~> 1.1', '>= 1.1.2'
gem 'kickstart_rails', '~> 3.1', '>= 3.1.2'
gem 'font-awesome-sass', '~> 5.0.6'

group :development, :test do
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'coveralls', require: false
  gem 'dotenv-rails'
  gem 'launchy'

end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
