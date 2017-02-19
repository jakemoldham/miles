require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Miles
  class Application < Rails::Application
    
  config.generators do |g|
    g.test_framework :minitest, spec: true, fixture: true
    g.helper false
    g.view_specs false
  end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
