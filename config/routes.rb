Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"
  resources :home, only: [:index]
  namespace :api do
    namespace :v1 do
      # Resource route for listing users (index action only)
      resources :users, only: [:index]
      resources :members
      resources :devotions
      resources :leadership_positions
      resources :fellowship_groups
      resources :events
    end
  end
end
