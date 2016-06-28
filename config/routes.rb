Rails.application.routes.draw do
  
  devise_for :users
  resources :roles
  resources :projects

  root 'projects#index'

end
