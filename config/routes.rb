Rails.application.routes.draw do
  resources :flats
  devise_for :users
  root to: "pages#home"
  get "booking", to: "booking#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
