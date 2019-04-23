Rails.application.routes.draw do
  devise_for :users
  root 'home#index', as: 'home'

  resources :items, only: [:show, :index]
  resources :categories, only: [:show, :index]
  resources :users, only: [:show]
  resources :carts
  resources :line_items, only: [:create]
  resources :orders, only: [:show]

  post 'carts/:id/checkout', to: 'carts#checkout', as: 'checkout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
