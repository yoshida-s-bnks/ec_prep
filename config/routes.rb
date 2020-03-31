Rails.application.routes.draw do
  root :to => 'items#index'
  resources :user_sessions
  resources :users, except: :index

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

end
