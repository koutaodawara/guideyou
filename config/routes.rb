Rails.application.routes.draw do
  devise_for :users
  resources :guide, only: :index

    root 'guide#index'
end
