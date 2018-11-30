source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.4.2"

gem "rails", "~> 5.2.1"
gem "sqlite3"
gem "puma", "~> 3.11"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "bcrypt", "~> 3.1.7"
gem "mini_magick", "~> 4.8"
gem "rails-i18n"
gem "config"
gem "ffaker"
gem "kaminari"
gem "ransack"
gem "bootstrap-kaminari-views"
gem "jquery-rails"
gem "bootstrap-sass"
gem "momentjs-rails", ">= 2.9.0"
gem "bootstrap-datepicker-rails"
gem "awesome_nested_set"
gem "ransack"
gem "bootsnap", ">= 1.1.0", require: false

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "capybara", "~> 2.13"
  gem "selenium-webdriver"
  gem "rspec-rails"
  gem "shoulda-matchers"
  gem "factory_bot_rails", "~> 4.0"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "chromedriver-helper"
  gem "database_cleaner"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
