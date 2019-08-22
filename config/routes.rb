Rails.application.routes.draw do
   
  get 'sessions/login'
  get 'sessions/register'
  post '/login' => 'sessions#login_user' 
  root 'dogs#index'
  resources :dogs
  # get 'dogs/index'
  # get 'dogs/show'
  # get 'dogs/new'
  # get 'dogs/edit'
end
