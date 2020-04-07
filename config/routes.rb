Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  root :to => 'items#index'
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :user_sessions, only: [:new, :create, :destroy]
  resources :users, except: :index do
    member do
      get :activate
    end
  end
  resources :addresses, only: [:new, :create, :edit, :update]

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

end
