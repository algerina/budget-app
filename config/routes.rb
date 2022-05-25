Rails.application.routes.draw do
  get 'gategories/index'
  get 'gategories/new'
  get 'gategories/create'
  devise_for :users
 
  root to: 'home#index'
end
