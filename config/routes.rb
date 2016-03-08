Rails.application.routes.draw do
  root to: 'homes#index', via: :get
  resources :users, only: [:new, :show, :create]
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get]
end
