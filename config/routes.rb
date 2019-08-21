Rails.application.routes.draw do
  root 'homepage#index'

  get 'logout', to: 'sessions#destroy'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

end
