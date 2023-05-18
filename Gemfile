source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'
gem 'sendgrid-ruby'
gem 'friendly_id', '~> 5.4.0'
gem 'dotenv-rails', groups: [:development, :test, :production]
gem "aws-sdk-s3", require: false
gem 'rolify', '~> 5.2' # manage role 
# allows MTI multitaple inheritance in rails
gem 'active_record-acts_as'
gem 'devise'
gem 'rails-i18n'
gem 'pundit', '~> 2.1'    # https://github.com/varvet/pundit  (manahe authorization)
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
#gem 'rails', '~> 6.0.2', '>= 6.0.2.2'
gem 'rails', '~> 6.0.3', '>= 6.0.3.3'
# Use postgres as the database for Active Record
gem 'pg'
gem 'font_awesome5_rails'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'
gem 'trix'
gem 'globalid', '~> 1.0'
gem 'net-smtp', require: false
gem 'net-imap', require: false
gem 'net-pop', require: false
gem 'psych', '< 4'
gem 'rexml', '~> 3.2', '>= 3.2.4'
#gem 'newrelic_rpm', git: 'https://github.com/newrelic/newrelic-ruby-agent.git', branch: 'bugfix_trace_context_payload_typeerror'
#gem 'carrierwave', '~> 0.11.2'

gem 'bootsnap', require: false
# debugger
gem 'pry-byebug'

# Reduces boot times through caching; required in config/boot.rb
#gem 'bootsnap', '>= 1.4.2', require: false
gem 'globalize', git: 'https://github.com/globalize/globalize' # manage record translation
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
