Rails.application.routes.draw do
 
  resources :users, only: [:create]
  resources :workouts
  resources :favorites 
  resources :muscles 
  resources :target_muscle

  post '/login', to: 'auth#create'
  # delete 'logout', to: 'auth#destroy'
  get '/logged_in', to: 'application#logged_in?'




end
