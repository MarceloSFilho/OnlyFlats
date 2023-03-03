Rails.application.routes.draw do
  resources :flats do
    resources :bookings, only: %i[new create]
  end
  devise_for :users
  root to: "pages#home"
  get "home", to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  get "new", to: "pages#new"
  # Defines the root path route ("/")
  # root "articles#index"
end
