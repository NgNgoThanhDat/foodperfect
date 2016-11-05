Rails.application.routes.draw do
  get '/signup',  to: 'users#new'
  get '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/auth/:provider/callback', to: 'sessions_auth#create'
  resources :users
  root to: 'welcome#index'
end
