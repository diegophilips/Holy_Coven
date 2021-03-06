Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

resources :projects

resources :users, only: [:show, :update] do
  resources :bookings, only: [:new, :create, :show, :update, :edit, :destroy]
  resources :reviews, only: [:new, :create]
end

resources :conversations do
  resources :messages
 end

resources :reviews, only: [:edit, :update, :destroy]
resources :services, only: [:index]
resources :userservices, only: [:new, :create]

get :pros, to: "users#index"
get :about, to: "pages#about"
get :dashboard, to: "pages#dashboard"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
