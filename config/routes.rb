Rails.application.routes.draw do
  devise_for :users
  root to: 'texts#index'
  resources :texts, except: :index
  resources :users, only: :show
end
