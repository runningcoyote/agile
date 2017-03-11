Rails.application.routes.draw do
  
  
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout'=> :destroy
  end
  get 'admin/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  
  resources :sessions
  resources :users
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index'
  
  
  resources :products
  root 'store#index'
  # For details on the DSL available within this file, see
  # http://guides.rubyonrails.org/routing.html
end