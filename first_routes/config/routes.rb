Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:show, :create, :update, :destroy, :index]
  resources :artworks, only: [:show, :create, :update, :destroy]
  resources :artwork_shares, only: [:create, :destroy]

  get 'users/:user_id/artworks', to: 'artworks#index'

  # get 'users/', to: 'users#index', as: 'all_users'
  # get 'users/:id', to: 'users#show', as: 'user'
  # post 'users/', to: 'users#create', as:'create_user'
  # get 'users/new', to: 'users#new', as: 'new_user'
  # get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  # patch 'users/:id', to: 'users#update', as: 'patch_user'
  # put 'users/:id', to: 'users#update', as: 'put_user'
  # delete 'users/:id', to: 'users#delete', as: 'kill_user'


end
