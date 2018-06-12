Rails.application.routes.draw do
  require 'sidekiq/web'

  mount Sidekiq::Web, at: '/sidekiq'

  root 'report1#index'
  resources :report1, only: :index
  resources :report2, only: :index
end
