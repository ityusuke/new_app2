# frozen_string_literal: true

source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'

#環境
gem 'rails', '~> 5.2.2'
gem 'dotenv-rails'
ruby '2.5.5'
gem 'mysql2', '~> 0.4.10'
#SNS認証機能
gem 'rails_admin'
gem 'devise'
gem 'omniauth'
gem 'omniauth-google-oauth2'
#HTML,CSS
gem 'bootstrap', '~> 4.1.1'
gem 'bootstrap_form'
gem 'font-awesome-sass', '~> 5.4.1'
gem 'erb2haml'
gem 'haml-rails'
gem 'simple_form'
#ページネーション
gem 'kaminari', '~> 0.17.0'
gem 'kaminari-bootstrap', '~> 3.0.1'
# 画像投稿機能
gem "aws-sdk-s3", require: false 
gem 'carrierwave'
gem 'rmagick'
gem 'mini_magick', '~> 4.8'
#検索機能
gem 'ransack'
#サンプルデータ
gem 'faker'
#異言語対応
gem 'rails-i18n', '~> 5.1'
#デバッグ用gem
gem 'pry-byebug'
gem 'pry-rails'
gem 'activemodel-serializers-xml'
#Linter
group :development do
  gem 'rubocop', require: false
end
# Rspec用
group :development, :test do
  gem 'capybara'
  gem 'factory_bot_rails', '~>4.11'
  gem 'rspec-rails', '~> 3.6'
  gem 'selenium-webdriver'
  gem 'dotenv-rails'
  gem 'sqlite3', '~> 1.3.6'
end
group :test do
  gem 'rspec_junit_formatter'
end
gem 'nokogiri', '~> 1.10.4'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
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
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '~> 3.0.5'
  gem 'web-console'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'rails_12factor'
  gem 'pg'
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
