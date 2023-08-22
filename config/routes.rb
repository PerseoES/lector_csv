Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "sessions#new"
  resources :reports
  resources :t_reports
  resources :users
  resources :groups
  resources :admins
  resources :autoevaluacions

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  get 'loguot', to: 'sessions#destroy'
end
