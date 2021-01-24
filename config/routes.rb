require 'sidekiq/web'

Rails.application.routes.draw do
  resources :jobs
  devise_for :users
  root to: 'jobs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

devise_scope :user do
  delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
end
