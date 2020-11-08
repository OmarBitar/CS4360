Rails.application.routes.draw do
  devise_for :users, controllers: { 
      registrations: 'users/registrations'
  }

  root :to => "welcome#index"

  get "coverage", to: "coverage#index"
  get "/users/edit", to: "users#edit"

  resources :schedules
  resources :coverage
  resources :roles
  resources :employees

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end