Rails.application.routes.draw do
  get "/", to: "api#hello"
  get "/orders", to: "api#orders"
end
