Rails.application.routes.draw do
  root   'users#top'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get    '/edit',    to: 'users#edit'
  get    '/skills',  to: 'skills#edit'
  resources :categories do
    resources :skills, only: [:new, :create, :edit, :destroy]
  end
end
