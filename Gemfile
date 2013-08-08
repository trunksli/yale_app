source 'https://rubygems.org'

gem 'rails'
gem 'bootstrap-sass'
gem 'bcrypt-ruby', '3.0.1'
gem 'pg', '0.12.2'
# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
	gem 'rspec-rails'
	gem 'guard-rspec'
	gem 'guard-spork'
	gem 'childprocess'
	gem 'spork'
end

require 'rbconfig'
gem 'wdm', '>= 0.1.0' if RbConfig::CONFIG['target_os'] =~ /mswin|mingw/i

group :development do
	gem 'annotate'	
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'rvm' #eliminates need for bundle exec

group :test do
	gem 'capybara', '1.1.2'
	gem 'factory_girl_rails'
	gem 'rb-fchange'
	gem 'rb-notifu'
	gem 'win32console'
end

group :production do
end
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
