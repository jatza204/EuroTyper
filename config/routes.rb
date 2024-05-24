Rails.application.routes.draw do
  get 'sessions/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # root 'matches#index'  # Commented out because we only want one root path

  post 'matches/update_odds', to: 'matches#update_odds'

  resources :matches

  # config/routes.rb

  post 'admin_form', to: 'dashboard#submit_admin_form', as: 'admin_form'
  
  post 'login', to: 'sessions#create'

  get 'admin', to: 'admin#index'

  root 'sessions#new'  # This is the root path

  get 'dashboard', to: 'dashboard#index', as: 'dashboard'

  # config/routes.rb

  post 'regular_form', to: 'dashboard#submit_regular_form', as: 'regular_form'
  
  # Add this line to create resource routes for users
  resources :users
end