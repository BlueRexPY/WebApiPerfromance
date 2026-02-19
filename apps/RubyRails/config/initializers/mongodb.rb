MONGO_CLIENT = Mongo::Client.new(
  ENV.fetch("MONGO_URL", "mongodb://mongodb:27017"),
  database: "ordersdb",
  max_pool_size: 120,
  min_pool_size: 10,
  wait_queue_timeout: 5
)
