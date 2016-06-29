Rails.application.routes.draw do

  get 'conversations/index'

  get 'conversations/show'

  root 'projects#index'

  devise_for :users
  # resources :projects

  # resources :roles, except: [:create]

  resources :projects do
    resources :roles, except: [:create]
    post 'create_role', to: 'roles#create'
  end

  resources :conversations, only: [:index, :show, :destroy]

end
