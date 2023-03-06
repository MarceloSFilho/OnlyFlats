Rails.application.routes.draw do
  resources :flats do
    resources :bookings, only: %i[new create]
  end
  devise_for :users
  root to: "pages#home"
  get "home", to: "pages#home"
  get "profile", to: "pages#profile"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  get "confirmation", to: "pages#confirmation"
  get "all", to: "bookings#all", as: 'all_bookings'
  # Defines the root path route ("/")
  # root "articles#index"
end
