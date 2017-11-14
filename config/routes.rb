Rails.application.routes.draw do
  get 'sessions/new'

  resources :sessions
  resources :users
  # get 'articles/index'
  #
  # get 'articles/show'
  #
  # get 'articles/edit'

  resources :articles

  root to: 'articles#index'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
