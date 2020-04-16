Rails.application.routes.draw do
  resources :comments
  resources :blogs
  resources :users, except: [:new]

  get 'signup', to: 'users#new', as: 'new_user'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout' , to: 'sessions#destroy'

  root to: 'sessions#new'

  # get '/user_auth', to: 'users#auth' as: 'user_auth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
