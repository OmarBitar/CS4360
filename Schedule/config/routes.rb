Rails.application.routes.draw do
get "/users/login"
post "/users/verify"
get "/users/fyp"
get "/users/error"
get "/users/success"
  resources :users
  root 'users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
