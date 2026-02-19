Rails.application.routes.draw do
  get "/", to: "api#hello"
  get "/postgresql/orders", to: "api#orders"
  get "/mongodb/orders", to: "api#mongodb_orders"
end
