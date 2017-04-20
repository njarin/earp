Rails.application.routes.draw do
  root "sessions#new"

  resources :sessions, only: [:new, :create, :destroy]
  resources :experiments, only: [:index, :show, :new, :create, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
