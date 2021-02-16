Rails.application.routes.draw do
  devise_for :users
  get 'books/new'
  root to: 'homes#top'
  get 'homes/about'
  resources :users
end