Rails.application.routes.draw do

  root 'index_pages#home'

  get '/home', to: 'index_pages#home'
  get '/about', to: 'index_pages#about'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users

end
