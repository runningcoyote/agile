Rails.application.routes.draw do
  resources :statics
  get 'admin/index'
  
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout'=> :destroy
  end



  resources :users
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index'
  
  
  resources :users 
  resources :products
  root 'store#index'
  # For details on the DSL available within this file, see
  # http://guides.rubyonrails.org/routing.html
end