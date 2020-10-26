Rails.application.routes.draw do
  # device
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
  }
  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end
  # ゲストログイン
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  resources :users, :only => [:show]
  root 'pages#home'
  get '/howto', to: 'pages#howto'
  get '/terms', to: 'pages#terms'
  get '/privacy', to: 'pages#privacy'

  resources :clans do
    resources :requests, only: %i(create destroy)
    resources :belongings, only: %i(icreate destroy)
    resources :boards, only: %i[index create update destroy]
  end
end
