Rails.application.routes.draw do


  devise_for :users
  resources :subscriptions, only: [:new]
  post '/charges', controller: :subscriptions, action: :create
  resources :articles, only: [:index, :show]
  root controller: :articles, action: :index
end
