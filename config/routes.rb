Rails.application.routes.draw do
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :calendars
  root 'calendars#index'

  resources :blogs

  get 'login', to: 'sessions#new'
  get 'home', to: 'sessions#home'
  get 'signup', to: 'sessions#signup'
  # post 'signup', to: 'sessions#signup'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
