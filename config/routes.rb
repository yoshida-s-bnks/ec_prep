Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  root :to => 'items#index'
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :user_sessions
  resources :users, except: :index

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

end
