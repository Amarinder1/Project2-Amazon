Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :cart_items
  resources :cart
  resources :items do
    member do
      post "add_to_cart"
      delete "remove_from_cart"
      get "items_in_cart"
    end
  end
end
