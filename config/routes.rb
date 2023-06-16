Rails.application.routes.draw do
  root "movies#index"
  resources :movies
  post '/movies/import', to: 'movies#import'

end
