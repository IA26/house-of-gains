Rails.application.routes.draw do

  resources :tiers
  get 'signup', :to => 'users#new'
  get 'login', :to => 'sessions#new' 
  get 'logout', :to => 'sessions#destroy'
  resources :sessions
  resources :subscriptions, only: [:new, :create, :destroy]
  resources :gyms, only: [:index, :show, :destroy]
  resources :users, only: [:index, :welcome, :show, :new, :create, :destroy]

  root to: 'gyms#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
