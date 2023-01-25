Rails.application.routes.draw do
  root   'users#top'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users, only: [:show, :edit, :update] do
    resources :skills, only: :index
  end

  resources :users, except: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :categories, except: [:index, :new, :create, :show, :edit, :update, :destroy] do
      resources :skills, except: [:index, :show]
    end
  end
end
