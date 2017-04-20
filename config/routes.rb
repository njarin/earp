Rails.application.routes.draw do
  root "sessions#new"

  resources :sessions, only: [:new, :create, :destroy]
  resources :experiments, only: [:index, :show, :new, :create, :update]
  resources :users, only: [:new, :create]

end
