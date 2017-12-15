Rails.application.routes.draw do

  # Authentication
  # @implemented
  devise_for :users

  # Dashboard
  # @implemented
  namespace :dashboard do
    get '/', to: "home#index"
    resources :products
    resources :cases
    resources :users
  end

  # Application
  # @implemented
  root to: 'home#index'
  resources :cases, only: [:index] 
  resources :products, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
