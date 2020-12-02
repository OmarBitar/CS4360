Rails.application.routes.draw do

  devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions'
  }
  root "welcome#index"
  get "/users/edit", to: "users#edit"

  resources :roles
  resources :employees
  resources :shifts
end