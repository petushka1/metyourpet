require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Backend
  class Application < Rails::Application
    config.load_defaults 7.0 if defined?(config.load_defaults)
    config.public_file_server.enabled = true
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'http://localhost:3001' # Replace with your frontend domain or origin
        resource '*', headers: :any, methods: [:get, :post, :options]
      end
    end
  end
end
