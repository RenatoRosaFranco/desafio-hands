Rails.application.routes.draw do

  # Authentication
  devise_for :users

  # Application
  root to: 'home#index'
  resources :cases, only: [:index]
  resources :products, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
