Rails.application.routes.draw do
  require 'sidekiq/web'

  mount Sidekiq::Web, at: '/sidekiq'

  resources :app2, only: :index
end
