source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.2.0'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'devise'
gem 'bootstrap'
gem "bootstrap-sass", ">= 3.4.1"
gem 'font-awesome-sass'
gem "font-awesome-rails" 
gem 'devise-i18n'
gem 'devise-i18n-views'
gem 'carrierwave'
gem 'mini_magick'
gem 'jquery-rails'
gem 'ransack'
gem 'kaminari'
gem 'acts-as-taggable-on', '~> 6.0'
gem 'meta-tags'
gem 'aws-sdk-s3', '1.46.0', require: false
gem 'dotenv-rails'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem 'rails-controller-testing'
  gem "sqlite3", "~> 1.3.6"
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rubocop-airbnb'
  gem "rails-erd"
end

group :production do
  gem 'mysql2', '~>0.5.3'
  gem 'fog-aws'
  gem 'unicorn', '5.4.1'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
