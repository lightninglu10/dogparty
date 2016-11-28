Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  devise_for :partys
  resources :partys
end
