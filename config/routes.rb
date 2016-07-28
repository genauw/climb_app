Rails.application.routes.draw do
  root 'index_pages#home'

  get 'index_pages/home'
  get 'index_pages/about'

end
