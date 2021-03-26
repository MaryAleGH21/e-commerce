Rails.application.routes.draw do
  resources :products
  resources :categories
  devise_for :admins
  root 'home#index'
end
