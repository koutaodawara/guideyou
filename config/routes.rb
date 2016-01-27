Rails.application.routes.draw do
  devise_for :users
  root 'tops#index'
  resources :tops, only: :index
  resources :tags, only: :show
  resources :guides, only: [:index,:new, :create, :show]

  # resources :users, only: [:show]
end
