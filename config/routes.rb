Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # USERS
  get 'users', to: 'users#index'
  post 'users/new', to: 'users#create'

  # SESSIONS
  post '/login', to: 'sessions#login'
end
