Rails.application.routes.draw do
  get 'books/new'
  devise_for :users
  root to: 'homes#top'
  get 'homes/about'
end
