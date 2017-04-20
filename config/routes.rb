Rails.application.routes.draw do

  resources :experiments, only: [:new, :show]

end
