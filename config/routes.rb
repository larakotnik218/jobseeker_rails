require 'sidekiq/web'

Rails.application.routes.draw do
  resources :jobs
  devise_for :users
  root to: 'jobs#index'
  get '/auth/:provider/callback' => 'sessions#omniauth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
