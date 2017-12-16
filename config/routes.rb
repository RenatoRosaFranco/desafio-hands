Rails.application.routes.draw do

  # Authentication
  devise_for :users

  default_url_options host: 'http://localhost:3000'
  # Dashboard
  namespace :dashboard do
    get '/', to: "home#index"
    resources :products
    resources :cases
    resources :users
  end

  # Application
  root to: 'home#index'
  resources :cases, only: [:index]
  resources :products, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
