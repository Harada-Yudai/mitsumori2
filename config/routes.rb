Rails.application.routes.draw do
  root to: "users#index"
  
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :destroy, :edit, :index]
end
