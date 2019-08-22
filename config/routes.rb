Rails.application.routes.draw do

  get 'sessions/login'
  get 'sessions/register'
  root 'dogs#index'
  resources :dogs

  # get 'dogs/index'
  # get 'dogs/show'
  # get 'dogs/new'
  # get 'dogs/edit'
end
