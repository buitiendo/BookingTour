Rails.application.routes.draw do
  namespace :admin do
    get "dasboard/index", to: "dasboard#index"
  end
end
