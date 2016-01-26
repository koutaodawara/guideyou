Rails.application.routes.draw do
  devise_for :users
  root 'guides#index'
  resources :guides, only: [:new, :create, :show]

  # resources :users, only: [:show]
end
