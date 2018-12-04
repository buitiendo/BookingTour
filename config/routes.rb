Rails.application.routes.draw do
  namespace :admin do
    get "dasboard/index", to: "dasboard#index"
    resources :users
    resources :categories
    resources :bookings
    resources :reviews
  end
  resources :tours, only: %i(index show)
  resources :categories, only: %i(index show)
end
