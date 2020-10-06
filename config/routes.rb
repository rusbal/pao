Rails.application.routes.draw do
  root "dashboard#index"

  resources :accounts
  resources :admins, only: :index
  resources :lawyers, only: [:index, :show]
  resources :clients, only: :index
  resources :requests, only: :index
end
