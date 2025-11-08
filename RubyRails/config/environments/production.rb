require "active_support/core_ext/integer/time"

Rails.application.configure do
  config.enable_reloading = false
  config.eager_load = true
  config.consider_all_requests_local = false
  config.public_file_server.enabled = false
  
  config.log_level = :error
  config.log_tags = []
  
  config.active_record.dump_schema_after_migration = false
  config.active_record.verbose_query_logs = false
  
  # Disable ActiveRecord query logging
  config.active_record.logger = nil
end
