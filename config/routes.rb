Rails.application.routes.draw do

  namespace :dashboard do
    resources :users
  end
  namespace :dashboard do
    resources :products
  end
  namespace :dashboard do
    resources :cases
  end
  namespace :dashboard do
    get 'home/index'
  end

  # Authentication
  devise_for :users

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
