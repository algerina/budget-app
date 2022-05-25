Rails.application.routes.draw do
  # get 'categories/index'
  # get 'categories/new'
  # get 'categories/create'
  devise_for :users
  resources :categories, only: [:index, :new, :create]
 
  root to: 'categories#index'
end
