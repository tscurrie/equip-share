Rails.application.routes.draw do
  root to: 'users#index'
  get '/users', to: 'users#index', as: 'users'
  get '/signup', to: 'users#new', as: 'signup'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'

end