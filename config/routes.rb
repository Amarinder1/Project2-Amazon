Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'items#index'
  resources :carts
  resources :items do
    member do
      post "add_to_cart"
      delete "remove_from_cart"
      delete "checkout"
    end
  end
end
