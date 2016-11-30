Rails.application.routes.draw do
  root to: 'visitors#index'
  get '/parties/new', to: 'parties#new', as: 'new_party'
  get '/parties/join', to: 'parties#join', as: 'join_party'
  get '/parties/left', to: 'parties#left', as: 'left_party'
  patch '/delete', to: 'parties#delete', as: 'delete'
  devise_for :users
  resources :users
  devise_for :parties
  resources :parties
end
