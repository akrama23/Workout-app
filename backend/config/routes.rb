Rails.application.routes.draw do
 
  resources :users
  resources :workouts
  resources :favorites 
  resources :muscles 
  resources :target_muscle

  post '/login', to: 'auth#create'
  post '/auto_login', to: 'auth#auto_login'
  # delete 'logout', to: 'auth#destroy'
  get '/logged_in', to: 'application#logged_in?'
  



end
