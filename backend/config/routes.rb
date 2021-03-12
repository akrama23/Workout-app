Rails.application.routes.draw do
 
  resources :users
  resources :workouts
  resources :favorites 
  resources :muscles 
  resources :target_muscles

  post '/favorite_delete', to: 'favorites#destroy'
  post '/login', to:'auth#create'
  
  post '/auto_login', to:'auth#auto_login'
  get '/logged_in', to: 'application#logged_in?'
  



end
