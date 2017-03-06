Rails.application.routes.draw do
  resources :orders
  resources :stuffs
  resources :line_items
  resources :carts
  get 'store/index'
  
  
  resources :users 
  resources :products
  root 'store#index'
  # For details on the DSL available within this file, see
  # http://guides.rubyonrails.org/routing.html
end

