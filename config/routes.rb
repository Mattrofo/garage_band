 Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "componant", to: "pages#componant"
  get "test", to: "pages#test"

  resources :garages do
    resources :bookings, only: [:create]
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
