Rails.application.routes.draw do
  devise_for :users, controllers: {
      #sessions: 'users/sessions'
      registrations: 'users/registrations'
  }

  root 'roles#index'

  get "coverage", to: "coverage#index"
  get "welcome", to: "users#welcome"

  resources :schedules
  resources :coverage
  resources :roles
  resources :employees

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end