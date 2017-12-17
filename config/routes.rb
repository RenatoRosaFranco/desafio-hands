Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/dashboard', as: 'rails_admin'
   # API
   # @implemented
   namespace :api  do
     namespace :v1 do
      resources :cases, only: [:index]
      resources :products, only: [:index]
     end
   end

   # Authentication
   # default_url_options host: 'http://localhost:3000'

   # Dashboard
   # @implemented
   namespace :dashboard do
     get '/', to: "home#index"
     resources :products
     resources :cases
     resources :users
   end

   # Application
   root to: 'home#index'

   # Authentication
   # @implemented
   devise_for :users

end
