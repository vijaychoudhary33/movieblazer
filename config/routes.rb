Rails.application.routes.draw do
  root "movies#index"
  resources :movies
  delete 'clear', to: 'movies#clear', as: 'clear'
end
