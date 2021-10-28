Rails.application.routes.draw do
  resources :users
  resources :articles, only: [:show, :index, :new, :create]
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
