Rails.application.routes.draw do

  resources :experiments, only: [:index,:show, :new, :create, :update]

end
