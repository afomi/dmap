source 'https://rubygems.org'

gem 'rails', '3.2.12'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :development, :test do
  gem 'ruby-debug19'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'simplecov'
  gem 'simplecov-rcov'
  gem 'letter_opener'

  gem "machinist"
  gem "machinist_mongo", :git => "git://github.com/iwarshak/machinist_mongo.git", :require => 'machinist/mongoid'
  gem 'delorean'
  gem "faker"
end

group :test do
  gem 'capybara'
  gem 'webmock'
  gem 'launchy'
  gem 'watchr'
end
