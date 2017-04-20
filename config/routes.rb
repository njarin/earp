Rails.application.routes.draw do
  resources :experiments, only: [:index,:show, :new, :create]
  resources :users, only: [:new, :create]
end
