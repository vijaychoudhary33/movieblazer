Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions' }

  root "welcomes#index"
  resources :movies
  post '/movies/import', to: 'movies#import'

end
