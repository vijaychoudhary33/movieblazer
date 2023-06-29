require 'sidekiq/web'
require 'sidekiq/cron/web'
Rails.application.routes.draw do
  authenticate :user do
    mount Sidekiq::Web => '/sidekiq'
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions' }

  root "welcomes#index"
  resources :movies
  resources :imports
  post '/movies/import', to: 'movies#import'

end
