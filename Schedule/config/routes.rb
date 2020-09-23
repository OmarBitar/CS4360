Rails.application.routes.draw do
  resources :roles
get "/users/login"
post "/users/verify"
get "/users/fyp"
get "/users/error"
get "/users/success"
post "/users/secure_verify"
get "/users/secure_success"
get "/users/secure_error"
post "/users/check_answer"
get "/users/password_reset"
post "/users/password_update"
  resources :users
  resources :roles
  root 'users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
