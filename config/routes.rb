Rails.application.routes.draw do
  resource :carts, only: %i[show update] 
  devise_for :users
  devise_for :admins
  root 'home#index'

  authenticate :admin do
    resources :products
    resources :categories
  end
end
