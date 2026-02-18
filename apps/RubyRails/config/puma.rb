max_threads_count = ENV.fetch("RAILS_MAX_THREADS") { 16 }
min_threads_count = ENV.fetch("RAILS_MIN_THREADS") { max_threads_count }
threads min_threads_count, max_threads_count

port ENV.fetch("PORT") { 8000 }
environment ENV.fetch("RAILS_ENV") { "production" }

workers ENV.fetch("WEB_CONCURRENCY") { 2 }
preload_app!

plugin :tmp_restart

on_worker_boot do
  ActiveRecord::Base.establish_connection if defined?(ActiveRecord)
end
