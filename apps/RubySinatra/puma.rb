workers ENV.fetch("WEB_CONCURRENCY", 2).to_i
threads_count = ENV.fetch("RAILS_MAX_THREADS", 16).to_i
threads threads_count, threads_count

bind "tcp://0.0.0.0:8000"
environment ENV.fetch("RACK_ENV", "production")

preload_app!
