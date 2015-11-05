Rails.application.routes.draw do

  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  root to: "products#index"

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
end
