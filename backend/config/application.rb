require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Backend
  class Application < Rails::Application
    config.load_defaults 7.0 if defined?(config.load_defaults)

    # Initialize the static_paths array
    config.public_file_server.static_paths ||= []

    config.public_file_server.enabled = true
    config.public_file_server.static_paths << Rails.root.join('frontend', 'dist')

    
    config.public_file_server.headers = {
      'Cache-Control' => 'public, max-age=31536000',
      'Expires' => 1.year.from_now.to_formatted_s(:rfc822)
    }
    
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'http://localhost:3001'
        resource '*', headers: :any, methods: [:get, :post, :options]
      end
    end
  end
end
