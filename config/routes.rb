Rails.application.routes.draw do
  root   'users#top'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users do
    resources :categories do
      resources :skills, only: [:new, :create]
    end
  end

  resources :users, only: [:show, :edit, :update]

  resources :users do
    resources :skills, only: [:index, :edit, :update, :destroy]
  end
end
