Rails.application.routes.draw do
 
  resources :products
  
  root "products#index"

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
end
