Rails.application.routes.draw do
  root "dashboard#index"

  resources :accounts
  resources :admins, only: :index
  resources :lawyers, only: [:index, :show]
  resources :clients, only: [:index, :show]
  resources :requests, only: :index
  resources :open_requests, only: :index
  resources :close_requests, only: :index
  resources :meetings, only: :index
end
