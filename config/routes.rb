Rails.application.routes.draw do
  root 'dogs#index'
  resources :dogs
  
  # get 'dogs/index'
  # get 'dogs/show'
  # get 'dogs/new'
  # get 'dogs/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
