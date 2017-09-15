Rails.application.routes.draw do
  root to: 'items#index'
  resources :cart_items
  resources :cart
  resources :items
end
