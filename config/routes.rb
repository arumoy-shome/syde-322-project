Rails.application.routes.draw do
  root to: "homes#index", via: :get
  resources :users, only: [:show]
  resources :events, only: [:new, :create, :show]
  resource :calendar, only: [:show]
  resource :session, only: [:destroy]
  resource :feedback, only: [:new, :create]
  get "/auth/:provider/callback", to: "sessions#create"
  get "/tutors", to: "users#tutor"
end
