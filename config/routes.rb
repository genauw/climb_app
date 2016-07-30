Rails.application.routes.draw do
  root 'index_pages#home'

  get '/home', to: 'index_pages#home'
  get '/about', to: 'index_pages#about'
  get '/signup', to: 'users#new'

  resources :users

end
