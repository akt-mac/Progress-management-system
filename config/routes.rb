Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  get '/stoves/index/:per', to: 'stoves#index_page', as: :stoves_index_per
  get '/repairs/index/:per', to: 'repairs#index_page', as: :repairs_index_per
  
  resources :users
  resources :stoves do
    member do
      get 'edit_progress'
      get 'edit_reminder'
    end
  end
  resources :repairs do
    member do
      get 'edit_progress'
      get 'edit_reminder'
    end
  end
end
