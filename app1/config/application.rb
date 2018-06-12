require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Test1
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.enable_dependency_loading = true
    config.autoload_paths << "#{Rails.root}/lib"
    config.autoload_paths << "#{Rails.root}/lib/errors"

    config.time_zone = 'Hanoi'
    config.action_dispatch.default_headers = {
      'Access-Control-Allow-Origin' => '*',
      'Access-Control-Request-Method' => 'GET, PATCH, PUT, POST, OPTIONS, DELETE',
      'Access-Control-Allow-Headers:' => 'Origin, X-Requested-With, Content-Type, Accept'
    }

    config.autoload_paths += Dir["#{config.root}/lib", "#{config.root}/lib/errors"]
  end
end
