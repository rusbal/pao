Rails.application.routes.draw do
  root "dashboard#index"

  resources :accounts
  resources :admins, only: :index
end
