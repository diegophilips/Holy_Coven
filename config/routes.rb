Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

resources :projects

resources :users, only: [] do
  resources :bookings, only: [:new, :create, :show, :update, :edit, :destroy]
  resources :reviews, only: [:new, :create]
end

resources :reviews, only: [:edit, :update, :destroy]
resources :services, only: [:index]

get :pros, to: "users#index"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
