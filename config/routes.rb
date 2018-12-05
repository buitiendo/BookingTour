Rails.application.routes.draw do
  root "tours#index"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "sessions/new"
  resources :users
  resources :tours, only: %i(index show)
  resources :categories, only: %i(index show)
  namespace :admin do
    get "dasboard/index", to: "dasboard#index"
    resources :users
    resources :categories
    resources :bookings
    resources :reviews
  end
end
