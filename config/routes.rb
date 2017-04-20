Rails.application.routes.draw do

  resources :users, only: [:new, :create]
  resources :experiments, only: [:index,:show, :new, :create, :update]

end
