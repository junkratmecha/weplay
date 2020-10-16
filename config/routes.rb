Rails.application.routes.draw do
  

devise_for :users, :controllers => {
  :registrations => 'users/registrations',
  :sessions => 'users/sessions'   
} 

devise_scope :user do
  post 'users/guest_sign_in', to: 'users/sessions#new_guest'
end

devise_scope :user do
  get "user/:id", :to => "users/registrations#detail"
  get "signup", :to => "users/registrations#new"
  get "login", :to => "users/sessions#new"
  get "logout", :to => "users/sessions#destroy"
end

  root 'pages#home'
  get  '/howto',    to: 'pages#howto'
  get  '/terms',    to: 'pages#terms'
  get  '/privacy',  to: 'pages#privacy'

end
