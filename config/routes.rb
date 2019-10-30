Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  get '/stoves/:id/edit_progress/', to: 'stoves#edit_progress', as: :edit_progress
  post '/stove/:id/update_progress', to: 'stoves#update_progress', as: :update_progress
  
  resources :users
  resources :stoves
end
