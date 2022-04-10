Rails.application.routes.draw do
  root to: "users#index"
  
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :destroy, :edit, :index, :update] do
    resources :clients, only: [:index, :new, :create, :edit, :update, :destroy] do
      resources :projects, only: [:new, :create, :edit, :update, :destroy] do
        resources :items, only: [:new, :create, :edit, :update, :destroy]
      end
    end
  end

end
