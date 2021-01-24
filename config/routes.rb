require 'sidekiq/web'

Rails.application.routes.draw do
  resources :jobs
  devise_for :users, controller: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'jobs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
