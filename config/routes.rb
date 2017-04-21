Rails.application.routes.draw do
  root "index#index"

  resources :index, only: [:index]
  resources :sessions, only: [:new, :create, :destroy]
  resources :experiments, only: [:index, :show, :new, :create, :update]
  resources :users, only: [:new, :create]

end
