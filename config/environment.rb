# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!


ActionMailer::Base.smtp_settings = {

    :address => 'smtp.sendgrid.net',
    :port => '587',
    :authentication => :plain,
    :user_name => Rails.application.credentials.dig(:sendgrid, :sengird_username),
    :password => Rails.application.credentials.dig(:sendgrid, :sengrid_password),
    :domain => 'heroku.com',
    :enable_starttls_auto => true
}