require_relative 'boot'

require 'rails/all'
#require 'dotenv/load'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.i18n.available_locales = [:en, :it, :fr, :de]
    config.i18n.default_locale = :en
      #Globalize.fallbacks = {:de => [:en]}
    config.i18n.fallbacks = true

    #config.i18n.fallbacks =[:en]
  end
end
