# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
if Rails.env.staging? or Rails.env.production?
  ActionMailer::Base.smtp_settings = {
      :address        => 'smtp.socketlabs.com',
      :port           => '587',
      :user_name      => ENV['SOCKETLABS_USERNAME'],
      :password       => ENV['SOCKETLABS_PASSWORD'],
      :authentication => :login,
      :domain         => 'heroku.com',
      :enable_starttls_auto => true
  }
end


