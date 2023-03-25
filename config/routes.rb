Rails.application.routes.draw do
  resources :wishlists
  resources :orders
  # resources :productimages
  resources :carts do 
    member do 
      get :order, to: "orders#create"
    end
    member do
      get :remove_from_cart, to: "carts#destroy"
    end
  end
  resources :products do
    member do 
      get :cart, to: 'carts#create'
      get :wishlist, to: 'wishlists#create'
    end
    resources :productimages
  end       
  resources :idproofs
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :merchants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"
end

