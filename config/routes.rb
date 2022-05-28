Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  
  resources :categories do
    resources :expanses
  end
    
  
  root "home#index"

  # devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  # devise_scope :user do
  #   authenticated do
  #     root to: 'categories#index', as: 'user'
  #   end

    # unauthenticated do
    #   root to: 'home#index', as: 'unauthenticated_user_root'
    # end
    
  #   get '/auth/logout', to: 'devise/sessions#destroy'
  # end

  # resources :categories do
  #   resources :expanses
  # end
end
