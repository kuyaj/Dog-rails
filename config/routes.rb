Rails.application.routes.draw do
   
  get 'sessions/login'
  get 'sessions/register'
  get 'sessions/logout'
  post '/login', to: 'sessions#login_user' 
  post '/users', to: 'sessions#create_new_user'
  root 'dogs#index'
  resources :dogs
end
