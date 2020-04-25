Rails.application.routes.draw do
  root to: "events#index"
  resources :events
  devise_for :users
  resources :user, only: [:show, :index]
end