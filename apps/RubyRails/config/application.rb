require_relative "boot"

require "rails"
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"

Bundler.require(*Rails.groups)

module RubyRails
  class Application < Rails::Application
    config.load_defaults 7.1
    config.api_only = true
    config.eager_load = true
    
    # Secret key for API-only mode
    config.secret_key_base = ENV.fetch("SECRET_KEY_BASE") { "a" * 64 }
    
    # Disable logging in production for performance
    if Rails.env.production?
      config.logger = Logger.new(nil)
      config.log_level = :error
    end
    
    # Disable middleware for API performance
    config.middleware.delete ActionDispatch::RequestId
    config.middleware.delete ActionDispatch::RemoteIp
    config.middleware.delete Rack::Runtime
    config.middleware.delete Rack::MethodOverride
    config.middleware.delete ActionDispatch::Callbacks
    
    # Disable etag generation
    config.middleware.delete Rack::ETag
    config.middleware.delete Rack::ConditionalGet
  end
end
