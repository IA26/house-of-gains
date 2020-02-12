Rails.application.routes.draw do
  resources :subscriptions, only: [:new, :create, :destroy]
  resources :gyms, only: [:index, :show]
  resources :users, only: [:index, :new, :welcome, :show, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
