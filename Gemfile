source 'http://rubygems.org'

gem 'rails', '3.1.2'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

group :development do
	gem 'sqlite3'
end

group :production do
	gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
# NOTE: commented out these gems as we won't be ussing scss or cofferr script during the course
  gem 'sass-rails', "~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'
gem 'less'
gem 'haml'
gem 'chronic'
gem 'twitter-bootstrap-rails'
gem 'dynamic_form'
gem 'minitest'
gem 'rspec-rails'

gem 'validates_email_format_of', :git => 'git://github.com/alexdunae/validates_email_format_of.git'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development do
  gem 'RedCloth', :require => 'redcloth'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
