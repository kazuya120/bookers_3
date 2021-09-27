Rails.application.routes.draw do
  get 'users/show'
  get 'users/index'
  get 'users/edit'
  get 'users/update'
  get 'users/create'
  get 'users/destroy'
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :books, only: [:new, :create, :index, :show, :destroy, :edit, :update] 
  resources :users, only: [:show,:index,:edit,:update, :create, :destroy]
end
