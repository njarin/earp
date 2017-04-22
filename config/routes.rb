Rails.application.routes.draw do
  root 'sessions#new'

  # root "index#index"

  # resources :index, only: [:index]
  resources :sessions, only: [:new, :create, :destroy]
  resources :experiments, only: [:index, :show, :new, :create, :update] do
    resources :comments, only: [:new, :create]
  end
  resources :users, only: [:new, :create]

end
