Rails.application.routes.draw do
  namespace :admin do
    get "dasboard/index", to: "dasboard#index"
    resources :users
    resources :categories
    resources :bookings
  end
end
