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
    
    # Disable logging in production for performance
    config.logger = Logger.new(nil) if Rails.env.production?
    config.log_level = :error
    
    # Use Oj for JSON parsing/generation
    config.active_support.json_encoder = Oj
  end
end
