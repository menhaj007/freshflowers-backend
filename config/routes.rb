Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/signup', to: 'users#create'
  post '/stores', to: 'stores#create'
  post '/flowers', to: 'flowers#create'
  post '/profile', to: 'profiles#create'
  post '/order', to: 'orders#create'

  get '/stores', to: 'stores#index'
  get '/profiles', to: 'profiles#index'


end
