Rails.application.routes.draw do
  devise_for :users
  
  root "home#index"
  resources :home, only: [:index]
  namespace :api do
    namespace :v1 do
      
      resources :users, only: [:index]
      resources :members
      resources :devotions
      resources :leadership_positions
      resources :fellowship_groups
      resources :events
    end
  end
end
