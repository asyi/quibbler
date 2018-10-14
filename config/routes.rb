# config/routes.rb
Rails.application.routes.draw do
  resources :books
  root "home#show"
  get "/auth/oauth2/callback" => "auth0#callback"
  get "/auth/failure" => "auth0#failure"
  get "/profile" => "home#profile"
  get "/auth/logout" => "auth0#logout"
  resources :books
  resources :shelves
end