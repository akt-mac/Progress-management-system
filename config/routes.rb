Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  get '/stoves/:id/edit_progress', to: 'stoves#edit_progress', as: :edit_progress
  get '/stoves/:id/edit_reminder', to: 'stoves#edit_reminder', as: :edit_reminder
  
  get '/stoves/index/:per', to: 'stoves#index_page', as: :stoves_index_per
  
  resources :users
  resources :stoves
  resources :repairs
end
