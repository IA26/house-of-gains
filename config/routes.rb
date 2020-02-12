Rails.application.routes.draw do
  resources :gyms, only: [:index]
  resources :users, only: [:index, :new, :welcome, :show, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
