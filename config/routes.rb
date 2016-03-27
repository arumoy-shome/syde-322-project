Rails.application.routes.draw do
  root to: "homes#index", via: :get
  resources :users, only: [:show]
  resource :calendar, only: [:show]
  resource :session, only: [:destroy]
  get "/auth/:provider/callback", to: "sessions#create"
end
