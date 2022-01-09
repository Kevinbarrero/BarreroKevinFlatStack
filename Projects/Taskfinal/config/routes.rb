Rails.application.routes.draw do
  resources :tasks
  resources :projects
  get 'pages/about'
  get 'about', to: 'pages#about'
end
