Rails.application.routes.draw do
  resources :shifts
  devise_for :users, controllers: { 
      registrations: 'users/registrations'
  }
  root "welcome#index"
  get "/users/edit", to: "users#edit"

  resources :schedules
  resources :coverage_rules
  resources :roles
  resources :employees
end