SeniorDesignSite::Application.routes.draw do
  resources :join_team_contracts

  get 'sessions/new'
  get 'static_pages/home'
  post 'login' => 'sessions#create'

  resources :bids
  resources :students
  resources :teams

  root 'students#new'
end
