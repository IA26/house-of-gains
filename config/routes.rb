Rails.application.routes.draw do
  
  resources :subscriptions, only: [:new, :create, :destroy]
  resources :gyms, only: [:index, :show, :destroy]
  resources :users, only: [:index, :new, :welcome, :show, :create, :destroy]
  
  resources :login, only: [:new, :create]
  delete "logout", to: "login#destroy", as: "log_out"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
