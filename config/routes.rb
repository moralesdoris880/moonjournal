Rails.application.routes.draw do
  resources :users
  resources :entrys
  user_entries

  get '/user_entries', to: 'entrys#user_entries'

  get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end
