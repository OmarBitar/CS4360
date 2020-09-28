Rails.application.routes.draw do
  resources :shifts
  resources :coverage_rules
  resources :roles
  resources :employees
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
