Rails.application.routes.draw do
  resources :users, only: [:index, :update, :show, :create, :destroy] do
    resources :artworks, only: [:index]
  end
  resources :artworks, only: [:update, :show, :create, :destroy]
  resources :artwork_shares, only: [:destroy, :create]
  resources :comments
  # get 'users', to: 'users#index' as:'users'
  # post 'users' to: 'users#create'
  # get 'users/:id', to: 'users#show', as: 'user'
  # get 'users/new' to: 'users#new' as: 'new_user'
  # get 'user/:id/edit' to: 'users#edit' as: 'edit_user'
  # put 'user/:id' to: 'user#update'
  # delete 'users/:id' to: 'user#destroy'
  # patch 'users/:id' to: 'users#update'

end
