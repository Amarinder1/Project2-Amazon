Rails.application.routes.draw do
  root to: 'items#index'
  resources :posts do
    resources :comments
  end
end
