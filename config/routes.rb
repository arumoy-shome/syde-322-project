Rails.application.routes.draw do
  root to: "homes#index", via: :get
  resources :users, only: [:show, :update]
  resource :calendar, only: [:show]
  resource :session, only: [:destroy]
  get "/auth/:provider/callback", to: "sessions#create"
  get "/tutors", to: "users#tutor"
  get "/setup", to: "homes#setup"
end
