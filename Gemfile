source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.3"

gem "rails", "~> 7.0.2", ">= 7.0.2.2"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

# Mongoid is an ODM (Object Document Mapper) Framework for MongoDB, written in Ruby.
gem 'mongoid', '~> 7.3', '>= 7.3.4'

# Nokogiri is an HTML, XML, SAX, and Reader parser. Among Nokogiri's many features is the ability to search documents via XPath or CSS3 selectors.
gem 'nokogiri', '~> 1.6', '>= 1.6.8'

# An easy-to-use wrapper for Net::HTTP, Net::HTTPS and Net::FTP.
gem 'open-uri', '~> 0.2.0'

# Easy way to build and manage commands (service objects)
gem 'simple_command', '~> 0.1.0'

# Token based authentication for Rails JSON APIs. Designed to work with jToker and ng-token-auth.
gem 'devise_token_auth', '>= 1.2.0', git: "https://github.com/lynndylanhurley/devise_token_auth"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "factory_bot_rails", "~> 6.1"
  gem "faker", "~> 2.17"
  gem "rspec-rails", "~> 5.0"
end

group :test do
  gem "shoulda-matchers", "~> 4.5"
  gem 'database_cleaner'
end

