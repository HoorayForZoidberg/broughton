Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  get 'contact', to: 'messages#new', as: 'new_message'
  post 'contact', to: 'messages#create', as: 'create_message'

  get '/residents', to: 'pages#residents', as: 'residents'

  resources :issues, except: [ :show ] do
    resources :comments, except: [ :show ]
  end

end
