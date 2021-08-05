Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/signup', to: 'users#create'
  post '/users', to: 'users#create'
  post '/stores', to: 'stores#create'
  post '/flowers', to: 'flowers#create'
  post '/profile', to: 'profiles#create'
  post '/order', to: 'orders#create'
  
  get '/stores', to: 'stores#index'
  get '/flowers', to: 'flowers#index'
  get '/users', to: 'users#index'
  
  get '/store/:id', to: 'stores#show'
  patch '/store/:id', to: 'stores#edit'
  put '/store/:id', to: 'stores#update'
  delete '/store/:id', to: 'stores#destroy'
  
  get '/flower/:id', to: 'flowers#show'
  patch '/flower/:id', to: 'flowers#edit'
  put '/flower/:id', to: 'flowers#update'
  delete '/flower/:id', to: 'flowers#destroy'
  
  
  post '/login', to: 'auth#login'
  delete '/logout', to: 'auth#logout'
  


  get '/user/:id', to: 'users#show'
  # Not sure about the following
  get '/profiles', to: 'profiles#index'




end
