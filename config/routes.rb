 Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "componant", to: "pages#componant"
  get "dashboard", to: "pages#dashboard"

  resources :garages do
    resources :bookings, only: [:create]
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
