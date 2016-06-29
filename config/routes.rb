Rails.application.routes.draw do

  # WHAT ARE THESE ROUTES FOR?
  # get 'conversations/index'
  # get 'conversations/show'

  # resources :projects
  # resources :roles, except: [:create]
  # resources :sections

  root 'projects#index'

  devise_for :users

  resources :projects do
    resources :sections
    resources :roles, except: [:create]
    post 'create_role', to: 'roles#create'
  end

  resources :conversations do
    resources :messages
  end

end
