Rails.application.routes.draw do

  devise_for :users

  root to: 'homes#top'

  get "home/about" => "homes#about"

  resources :books do
    resources :book_comments, only: [:create, :destroy]
  resource :favorites, only: [:create, :destroy]
  end

  resources :users do
    resource :relationships, only: [:create, :destroy]
    get :follows, on: :member
    get 'followings' => 'relationships#follows', as: 'user_follow'
  	get 'followers' => 'relationships#followers', as: 'user_followers'
    get :followers, on: :member
  end

  get 'search' => 'searches#search', as: 'search'
  end